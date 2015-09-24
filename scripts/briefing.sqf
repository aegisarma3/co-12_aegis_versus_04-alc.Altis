/* Briefing
 * The briefing can be defined by calling FHQ_TT_addBriefing.
 * The array is built like this.
 * The first element should be a filter (side, group, faction, or a piece of script). All units matching the
 * filter will see the briefing
 * This is followed by pairs of strings, a head line, and an actual text.
 * Briefings are added in the order in which they appear for any unit that matches
 * the last filter.
 */
[
	{true},
		["Mission",
			"<marker name='insertion'>Perditus and Derelictus</marker> will neutralize the <marker name='obj2'>AA site</marker> on Cap Makrinos and destroy the two transport helicopters <marker name='obj3'>inbound from the south</marker>. After that the teams will return to the <marker name='insertion'>insertion point</marker> and leave the AO in a civilian truck."],

		["Situation",
			"November 20th 2015: private military company Aegis has successfully established the identity of the Nekron Chelia extremist group. The local news have been reporting more hostile activity by the NC and after the raid on the distillery and the loss of AAF personnel lives the local military presence has requested assistance from the Greek government.<br/><br/>PMC Aegis local high command (callsign 'Corona') has intercepted a radio communication stating that the Greek military forces have sent two transport helicopters full of troops to help the AAF battle the NC forces. The helicopters have taken off from the Greek aircraft carrier Lelantos stationed south-east of Altis in the Mediterranean Sea. Corona has tasked two five operator teams - inserted <marker name='insertion'>here</marker> - to neutralize the helos before they reach the AAC airport.<br/><br/>Since Aegis does not possess any kind of AA equipment Corona has located a suitable AAF AA site on Cap Makrinos for the Aegis teams to capture and use its weapon systems to take out the helos. To reach Cap Makrinos Corona has rented two small boats which should have already been delivered <marker name='boats'>on the coast</marker>.<br/><br/>After both of these objectives are completed the Aegis teams will return to the <marker name='insertion'>insertion point</marker>, change to civilian clothing, leave their weapons and return to FOB Cuprum in a civilian truck."],

		["Enemy",
			"PMC Aegis reconnaissance satellite Hannibal-6 has picked up multiple armed boats patrolling around the entrance to the mouth of Gulf Pyrgos. It seems that the AAF are making sure the Greek transport helos get to the airport safely. Corona estimates that the chances of reaching Cap Makrinos with this much AAF naval activity are less than ideal. For distraction, Corona has spotted several coastal defence points along the shores of the entrance to the Gulf and destroying the closest <marker name='obj1'>CDP's</marker> tank - which's turret is serving as a coastal defence gun - will most likely draw the AAF naval forces to secure the site and away from the AA site letting Aegis forces approach the skerry. The nearest AAF forces on the mainland are located at the nearest CDP. The CDPs are all located north of the AO posing to threat to the operation.<br/><br/>The AAF presence on Cap Makrinos consists of a small infantry team in charge of the AA equipment and skerry Pyrgi is believed to be empty."],

		["Callsigns",
			"Corona: local high command operating at FOB Aurum.<br/>Perditus: surgical element, based at FOB Cuprum.<br/>Derelictus: supporting element, based at FOB Ferrum."],

        ["Additional",
			"PMC Aegis uses FHQ Task Tracker to provide operators with briefings and tasks."]

] call FHQ_TT_addBriefing;

[
	{true},                                                         // Filter
    	["task1",										// Task name
         "Destroy the <marker name='obj1'>coastal defence point's armor</marker> to draw AAF naval forces north.",				       // Task text in briefing
         "Destroy the tank (optional).",							// Task title in briefing
         "courier"										// Waypoint text

        ],
        ["task2",										// Task name
         "Destroy the <marker name='obj2'>two transport helicopters</marker> inbound from the south-east.",				       // Task text in briefing
         "Destroy the helicopters.",							// Task title in briefing
         "commander"											// Waypoint text

        ],
		["task3",										// Task name
         "Seize <marker name='obj3'>Cap Makrinos</marker> and acquire the AA weapon systems.",				       // Task text in briefing
         "Seize Cap Makrinos.",							// Task title in briefing
         "ammo trucks"											// Waypoint text
        ],

        ["task4",										// Task name
         "Return to the <marker name='insertion'>insertion point</marker>.",				       // Task text in briefing
         "Return to the insertion point.",							// Task title in briefing
         "ammo trucks"											// Waypoint text
        ]

] call FHQ_TT_addTasks;
