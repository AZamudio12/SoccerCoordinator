
import UIKit


var players = [
    ["Name": "Joe Smith", "Height": "42", "Soccer Experience": "YES", "Guardians": "Jim and Jan Smith"],
    ["Name": "Jill Tanner", "Height": "36", "Soccer Experience": "YES", "Guardians": "Clara Tanner"],
    ["Name": "Bill Bon", "Height": "43", "Soccer Experience": "YES", "Guardians": "Sara and Jenny Bon"],
    ["Name": "Eva Gordon", "Height": "45", "Soccer Experience": "NO", "Guardians": "Wendy and Mike Gordon"],
    ["Name": "Matt Gill", "Height": "40", "Soccer Experience": "NO", "Guardians": "Charles and Sylvia Gill"],
    ["Name": "Kimmy Stein", "Height": "41", "Soccer Experience": "NO", "Guardians": "Bill and Hillary Stein"],
    ["Name": "Sammy Adams", "Height": "45", "Soccer Experience": "NO", "Guardians": "Jeff Adams"],
    ["Name": "Karl Saygan", "Height": "42", "Soccer Experience": "YES", "Guardians": "Heather Bledsoe"],
    ["Name": "Suzane Greenberg", "Height": "44", "Soccer Experience": "YES", "Guardians": "Henrietta Dumas"],
    ["Name": "Sal Dali", "Height": "41", "Soccer Experience": "NO", "Guardians": "Gala Dali"],
    ["Name": "Joe Kavalier", "Height": "39", "Soccer Experience": "NO", "Guardians": "Sam and Elaine Kavalier"],
    ["Name": "Ben Finkelstein", "Height": "44", "Soccer Experience": "NO", "Guardians": "Aaron and Jill Finkelstein"],
    ["Name": "Diego Soto", "Height": "41", "Soccer Experience": "YES", "Guardians": "Robin and Sarika Soto"],
    ["Name": "Chloe Alaska", "Height": "47", "Soccer Experience": "NO", "Guardians": "David and Jamie Alaska"],
    ["Name": "Arnold Willis", "Height": "43", "Soccer Experience": "NO", "Guardians": "Claire Willis"],
    ["Name": "Philp Helm", "Height": "44", "Soccer Experience": "YES", "Guardians": "Thomas Helm and Eva Jones"],
    ["Name": "Les Clay", "Height": "42", "Soccer Experience": "YES", "Guardians": "Wynonna Brown"],
    ["Name": "Herschel Krustofski", "Height": "45", "Soccer Experience": "YES", "Guardians": "Hyman and Rachel Krustofski"]

]

var teamSharks = [[String: String]]()
var teamDragons = [[String: String]]()
var teamRaptors = [[String: String]]()

var experiencedPlayers = [[String: String]]()
var noobPlayers = [[String : String]]()


for player in players {
  
    //print(player["Soccer Experience"] ?? "no experience found")
    
   
    
    if (player["Soccer Experience"] == "YES") {
        //if teamSharks expereince less than three append
        //if teamDragons experience less than three append
        //if teamRaptors experience less than three append
        experiencedPlayers.append(player)
    } else {
        noobPlayers.append(player)
    }
    
    
}

var numberOfExperiencedplayersToAdd = experiencedPlayers.count / 3
var numberOfNoobPlayersToAdd = noobPlayers.count / 3


var numExpPlayerTeamSharks = 0
var numExpPlayerTeamDragons = 0

for player in 0..<experiencedPlayers.count {
    
    if numExpPlayerTeamSharks < numberOfExperiencedplayersToAdd {
        teamSharks.append(experiencedPlayers[player])
        numExpPlayerTeamSharks += 1
    } else if numExpPlayerTeamDragons < numberOfExperiencedplayersToAdd {
        teamDragons.append(experiencedPlayers[player])
        numExpPlayerTeamDragons += 1
    } else {
        teamRaptors.append(experiencedPlayers[player])

    }
    
}

var numNoobPlayerTeamSharks = 0
var numNoobPlayerTeamDragons = 0

for player in 0..<noobPlayers.count {
    if numNoobPlayerTeamSharks < numberOfNoobPlayersToAdd {
        teamSharks.append(noobPlayers[player])
        numNoobPlayerTeamSharks += 1
    } else if numNoobPlayerTeamDragons < numberOfNoobPlayersToAdd {
        teamDragons.append(noobPlayers[player])
        numNoobPlayerTeamDragons += 1
    } else {
        teamRaptors.append(noobPlayers[player])
    }
}




/**for player in 0..<numberOfExperiencedplayersToAdd {
    teamSharks.append(experiencedPlayers[player])
}

for player in 3..<numberOfExperiencedplayersToAdd + 3 {
    teamDragons.append(experiencedPlayers[player])

}

for player in 6..<numberOfExperiencedplayersToAdd + 6 {
    teamRaptors.append(experiencedPlayers[player])
    
}**/

print(experiencedPlayers.count)
print(noobPlayers.count)

print(experiencedPlayers.count / 3 )


print("These are the experienced players \(experiencedPlayers)")
print("this is team Dragons \(teamDragons)")
print("this is team Sharks \(teamSharks)")
print("this is teamn Raptors \(teamRaptors)")
print("This is the team sharks count of experienced players: \(teamSharks.count)")
print("This is the team Dragon count of experienced players: \(teamDragons.count)")
print("This is the team raptor count of experienced players: \(teamRaptors.count)")
print("THese are the number of experienced players \(experiencedPlayers.count)")

