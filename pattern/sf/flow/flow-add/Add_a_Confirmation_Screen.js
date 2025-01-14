0) drug: screen (2) > display text > fill ... > 
1) new resource >
    Resource Type 	Formula
    API Name 	created_or_updated
    Data Type 	Text
    Formula 	IF({!Create_Contact}, "created", "updated")
done

0.1) open: screen (2) > display text > ;
    insert: created_or_updated
    link: {!contact}