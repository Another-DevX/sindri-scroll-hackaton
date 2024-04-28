struct DBRecord {
    cedula: Field,
}

fn main(cedula: Field,  address:pub Field){
    let db:[DBRecord;3] = [
        DBRecord{cedula: 123456789},
        DBRecord{cedula: 987654321},
        DBRecord{cedula: 112233445}
    ];

    // assert(cedula != address, "Cedula not found");
    assert(verify(cedula, address, db), "Verification failed");
  
}


unconstrained fn verify(cedula: Field, address: Field, db: [DBRecord;3]) -> bool {
    let mut found = false;

    for record in db {

        if record.cedula == cedula{

            found = true;
            
        }

    }
    found
}
