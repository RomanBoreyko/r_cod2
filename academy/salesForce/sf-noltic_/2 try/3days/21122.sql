// triggers

obj > lead
Qualified
not Qualified
not_Qualified

flow
trigered flow 

    lead 
    a record is updated

    all conditions are met (and)
        isConverted - equals - true

    fast field updates
    done

        disicion
            have opportunity
            record converted - is Null - false
        updated records
            update lead to qualified
            status - qualified 
            done 
        update lead to not qualified

        ...

dev console
    query editor
        select name, status from lead where IsConverted = true

