
# Table of Contents

1.  [Database](#orgf66dc96)
    1.  [TypeORM](#org7dec64b)



<a id="orgf66dc96"></a>

# Database


<a id="org7dec64b"></a>

## TypeORM

    async function runWithTransaction(connection: Connection) {
    
        const user = new User();
        user.firstName = "Timber";
        user.lastName = "Saw";
        user.age = 26;
    
        const queryRunner = connection.createQueryRunner();
        await queryRunner.connect();
        await queryRunner.startTransaction();
        await queryRunner.manager.save(user);
        await queryRunner.commitTransaction();
    
    }

