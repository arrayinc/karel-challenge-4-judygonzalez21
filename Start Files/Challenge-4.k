/* File: Challenge-4.k
 ---------------------------
Generalize the program you wrote in Challenge 3 so that Karel
is able to climb a stair-step mountain of any height and place
a flag on its top.

Thus, in addition to climbing the mountain in that exercise,
it should be able to scale a molehill or Mount Everest.
*/
import "turns";

function ClimbOverMountain(){
	repeat (3){
		climbMountain();
		placeFlag();
		leaveMountain();
		moveToEnd();
	}
} 


function climbMountain(){
	if (frontIsClear()){
		move();
	} 
	while(frontIsBlocked()){
		turnLeft();
		move();
		turnRight();
		move();
	}
}

function placeFlag(){
	putBeeper();
}

function leaveMountain(){
	while (frontIsClear()){	
		move();
		turnRight();
		if(frontIsClear()){
			move();
			turnLeft();
		}else {
			turnLeft();
		}
	}
}
function moveToEnd(){
	while (frontIsClear()){
		move();
	}
} 
