#import <Foundation/Foundation.h>
#import "AddingQuestion.h"

int getUserInput(int maxLenght){
    if (maxLenght < 1){
        maxLenght = 255;
    }
    char inputChars[maxLenght];
    char *result = fgets(inputChars, maxLenght, stdin);
    if(result != NULL){
        NSString *theString = [[NSString stringWithUTF8String:inputChars]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        if([theString  isEqual: @"quit"]){
            return -1;
        }
        return [theString intValue];
    }
    return 0.0;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%s", "MATHS!");
        int right = 0;
        int wrong = 0;
        while (YES) {
            int rn1 = arc4random_uniform(100);
            int rn2 = arc4random_uniform(100);
            AddingQuestion *ans = [[AddingQuestion alloc ]initWithRandNum1:rn1 andRandNum2:rn2 andstartTime:[NSDate date]];
            NSString *s = [NSString stringWithFormat:@"%i %s %i %s", rn1, " + ", rn2, " ?"];
            NSLog(@"%@", s);
            int user_input = getUserInput(255);
            if(user_input == -1){
                break;
            }
            BOOL question = [ans answer:user_input];
            if(question == true){
                NSLog(@"%s", "Right!");

                right += 1;
            }else{
                NSLog(@"%s", "Wrong!");

                wrong += 1;
            }
            
               AddingQuestion *sk = [[AddingQuestion alloc] init];
               int scorekeeper = [sk ScoreKeeper:right andW:wrong];
               
               NSString *a = [NSString stringWithFormat:@"%s%i%s%i%s%i%s", "score: ",right," right, ",wrong," wrong --- ",scorekeeper,"%"];
               NSLog(@"%@", a);
            
        }

    }
    return 0;
}
