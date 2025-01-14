classWork
1. Create custom object “Gym Visit” with fields: Contact, Date, Time, Duration, Card Type(Silver, Gold)
    Contact
        lookup > related to: contact > gymVisit_hw3_contactFN
        data > gymVisit_hw3_dataFN
        data/Time > gymVisit_hw3_dataTimeFN
        Number > gymVisit_hw3_DurationFN
        Picklist > gymVisit_hw3_CardTypeFN   
            -> Enter values, with each value separated by a new line
                Silver, Gold, Black

2. Create Profile “Sport Center Receptionist” (without access to card type field)
2. Create Role “Gym Manager” to see analysts records
    setup > FB -> Role -> New Role
        GymManager_hw3 | GymManager_hw3_RN | noltic
            GymAnalyst_hw3 | GymAnalyst_hw3_RN | GymManager_hw3
                GymReceptionist_hw3 | GymReceptionist_hw3_RN | GymAnalyst_hw3

3. Create Roles “Receptionist” and “Analyst” to allow Analysts see receptionist’s records
4. Create Users with those profiles.

        Create a new user
        Setup > Users -> Users -> New User
            userGymManager_hw3 | userGymManager_hw3_LN | ugm_hw3 | wodrom@gmail.com | wodrom@gmail.com_ugm | User16347629314086802337
            role: GymManager_hw3
            user license: Salesforce
            Profile: System Administrator
            Generate new password and notify user immediately
            active: v
            save

                userGymAnalyst_hw3 | userGymAnalyst_hw3_LN | uga_hw3 | wodrom@gmail.com | wodrom@gmail.com_uga | User16347629314086802337
                role: GymAnalyst_hw3
                user license: Salesforce platform
                Profile: Standart Platform User
                Generate new password and notify user immediately
                active: v
                save
                
                    userGymReceptionist_hw3 | userGymReceptionist_hw3_LN | ugr_hw3 | wodrom@gmail.com | wodrom@gmail.com_ugr | User16347629314086802337
                    role: GymReceptionist_hw3
                    user license: Salesforce platform
                    Profile: Standart Platform User
                    Generate new password and notify user immediately
                    active: v
                    save

5. Create Permission Set “Card Manager” to see Card’s Type
    setup > Permission Set
        Card_Manager_cw
        Card_Manager_cw_api
        manage assigment -> add asign -> check: userGymManager_hw3 -> assign

AfterClass:
4. user Pacman
    Pacman
    gymPacman_cw3
    gymP_cw3
    wodrom@gmail.com
    wodrom@gmail.com_gymP_cw3
    User16348282803297991470
    gymReceptionist
    salesform platform
    login: wodrom@gmail.com_gymp_cw3
    password: K4XiaKSx3DCrTfa
    answer: r0

Setup > Sharing Settings
    gym visit -> edit -> Default Internal Access: Private -> save

appLauncher > Sales > GymVisit_hw3 -> records


Домашнє завдання #3:
1. Create Profile “Coffee Maker” with no access to “Gym Visit” object
    setup>profiles>clone>Coffee Maker> 

2. Create Role “Gym Manager” to see analysts records
3. Create Permission Set “Gym Visits Permission” to allow to see “Gym Visit” object
    permision set -> new
        Gym_Visits_Permission_hw3
        Gym_Visits_Permission_hw3_api
        Object Settings -> gym visit -> edit -> objPermission: read, Tab Setting: visible.

