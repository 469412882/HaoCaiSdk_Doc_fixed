.class public Lcom/j256/ormlite/field/DatabaseFieldConfig;
.super Ljava/lang/Object;
.source "DatabaseFieldConfig.java"


# static fields
.field public static final DEFAULT_CAN_BE_NULL:Z = true

.field public static final DEFAULT_DATA_TYPE:Lcom/j256/ormlite/field/DataType;

.field public static final DEFAULT_FOREIGN_COLLECTION_ORDER_ASCENDING:Z = true

.field private static final DEFAULT_MAX_EAGER_FOREIGN_COLLECTION_LEVEL:I = 0x1

.field public static final DEFAULT_PERSISTER_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/j256/ormlite/field/DataPersister;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_MAX_FOREIGN_AUTO_REFRESH_LEVEL_SPECIFIED:I = -0x1

.field private static javaxPersistenceConfigurer:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;


# instance fields
.field private allowGeneratedIdInsert:Z

.field private canBeNull:Z

.field private columnDefinition:Ljava/lang/String;

.field private columnName:Ljava/lang/String;

.field private dataPersister:Lcom/j256/ormlite/field/DataPersister;

.field private dataType:Lcom/j256/ormlite/field/DataType;

.field private defaultValue:Ljava/lang/String;

.field private fieldName:Ljava/lang/String;

.field private foreign:Z

.field private foreignAutoCreate:Z

.field private foreignAutoRefresh:Z

.field private foreignCollection:Z

.field private foreignCollectionColumnName:Ljava/lang/String;

.field private foreignCollectionEager:Z

.field private foreignCollectionForeignFieldName:Ljava/lang/String;

.field private foreignCollectionMaxEagerLevel:I

.field private foreignCollectionOrderAscending:Z

.field private foreignCollectionOrderColumnName:Ljava/lang/String;

.field private foreignColumnName:Ljava/lang/String;

.field private foreignTableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "*>;"
        }
    .end annotation
.end field

.field private format:Ljava/lang/String;

.field private fullColumnDefinition:Ljava/lang/String;

.field private generatedId:Z

.field private generatedIdSequence:Ljava/lang/String;

.field private id:Z

.field private index:Z

.field private indexName:Ljava/lang/String;

.field private maxForeignAutoRefreshLevel:I

.field private persisted:Z

.field private persisterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/j256/ormlite/field/DataPersister;",
            ">;"
        }
    .end annotation
.end field

.field private readOnly:Z

.field private throwIfNull:Z

.field private unique:Z

.field private uniqueCombo:Z

.field private uniqueIndex:Z

.field private uniqueIndexName:Ljava/lang/String;

.field private unknownEnumValue:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field

.field private useGetSet:Z

.field private version:Z

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    const-class v0, Lcom/j256/ormlite/field/types/VoidType;

    sput-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->DEFAULT_PERSISTER_CLASS:Ljava/lang/Class;

    .line 21
    sget-object v0, Lcom/j256/ormlite/field/DataType;->UNKNOWN:Lcom/j256/ormlite/field/DataType;

    sput-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->DEFAULT_DATA_TYPE:Lcom/j256/ormlite/field/DataType;

    .line 76
    :try_start_0
    const-string v0, "javax.persistence.Entity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 78
    const-string v0, "com.j256.ormlite.misc.JavaxPersistenceImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 79
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

    sput-object v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->javaxPersistenceConfigurer:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-object v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->javaxPersistenceConfigurer:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->DEFAULT_DATA_TYPE:Lcom/j256/ormlite/field/DataType;

    iput-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataType:Lcom/j256/ormlite/field/DataType;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->canBeNull:Z

    .line 46
    iput-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisted:Z

    .line 55
    const/4 v1, -0x1

    iput v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->maxForeignAutoRefreshLevel:I

    .line 56
    sget-object v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->DEFAULT_PERSISTER_CLASS:Ljava/lang/Class;

    iput-object v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisterClass:Ljava/lang/Class;

    .line 66
    iput v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionMaxEagerLevel:I

    .line 69
    iput-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionOrderAscending:Z

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->DEFAULT_DATA_TYPE:Lcom/j256/ormlite/field/DataType;

    iput-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataType:Lcom/j256/ormlite/field/DataType;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->canBeNull:Z

    .line 46
    iput-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisted:Z

    .line 55
    const/4 v1, -0x1

    iput v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->maxForeignAutoRefreshLevel:I

    .line 56
    sget-object v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->DEFAULT_PERSISTER_CLASS:Ljava/lang/Class;

    iput-object v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisterClass:Ljava/lang/Class;

    .line 66
    iput v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionMaxEagerLevel:I

    .line 69
    iput-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionOrderAscending:Z

    .line 91
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fieldName:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/field/DataType;Ljava/lang/String;IZZZLjava/lang/String;ZLcom/j256/ormlite/table/DatabaseTableConfig;ZLjava/lang/Enum;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZII)V
    .locals 17
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "dataType"    # Lcom/j256/ormlite/field/DataType;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "canBeNull"    # Z
    .param p7, "id"    # Z
    .param p8, "generatedId"    # Z
    .param p9, "generatedIdSequence"    # Ljava/lang/String;
    .param p10, "foreign"    # Z
    .param p12, "useGetSet"    # Z
    .param p14, "throwIfNull"    # Z
    .param p15, "format"    # Ljava/lang/String;
    .param p16, "unique"    # Z
    .param p17, "indexName"    # Ljava/lang/String;
    .param p18, "uniqueIndexName"    # Ljava/lang/String;
    .param p19, "autoRefresh"    # Z
    .param p20, "maxForeignAutoRefreshLevel"    # I
    .param p21, "maxForeignCollectionLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/field/DataType;",
            "Ljava/lang/String;",
            "IZZZ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "*>;Z",
            "Ljava/lang/Enum<",
            "*>;Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZII)V"
        }
    .end annotation

    .line 98
    .local p11, "foreignTableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    .local p13, "unknownEnumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    move-object/from16 v0, p0

    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->DEFAULT_DATA_TYPE:Lcom/j256/ormlite/field/DataType;

    iput-object v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataType:Lcom/j256/ormlite/field/DataType;

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->canBeNull:Z

    .line 46
    iput-boolean v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisted:Z

    .line 55
    const/4 v2, -0x1

    iput v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->maxForeignAutoRefreshLevel:I

    .line 56
    sget-object v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->DEFAULT_PERSISTER_CLASS:Ljava/lang/Class;

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisterClass:Ljava/lang/Class;

    .line 66
    iput v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionMaxEagerLevel:I

    .line 69
    iput-boolean v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionOrderAscending:Z

    .line 99
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fieldName:Ljava/lang/String;

    .line 100
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnName:Ljava/lang/String;

    .line 101
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataType:Lcom/j256/ormlite/field/DataType;

    .line 102
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->defaultValue:Ljava/lang/String;

    .line 103
    move/from16 v5, p5

    iput v5, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->width:I

    .line 104
    move/from16 v6, p6

    iput-boolean v6, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->canBeNull:Z

    .line 105
    move/from16 v7, p7

    iput-boolean v7, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->id:Z

    .line 106
    move/from16 v8, p8

    iput-boolean v8, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->generatedId:Z

    .line 107
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->generatedIdSequence:Ljava/lang/String;

    .line 108
    move/from16 v10, p10

    iput-boolean v10, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreign:Z

    .line 109
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignTableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 110
    move/from16 v12, p12

    iput-boolean v12, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->useGetSet:Z

    .line 111
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->unknownEnumValue:Ljava/lang/Enum;

    .line 112
    move/from16 v14, p14

    iput-boolean v14, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->throwIfNull:Z

    .line 113
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->format:Ljava/lang/String;

    .line 114
    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->unique:Z

    .line 115
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->indexName:Ljava/lang/String;

    .line 116
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndexName:Ljava/lang/String;

    .line 117
    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignAutoRefresh:Z

    .line 118
    move/from16 v1, p20

    iput v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->maxForeignAutoRefreshLevel:I

    .line 119
    move/from16 v1, p21

    iput v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionMaxEagerLevel:I

    .line 120
    return-void
.end method

.method public static findGetMethod(Ljava/lang/reflect/Field;Lcom/j256/ormlite/db/DatabaseType;Z)Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "throwExceptions"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 548
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "get"

    .line 549
    const/4 v2, 0x1

    invoke-static {p0, v1, p1, v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->methodFromField(Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/j256/ormlite/db/DatabaseType;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "get"

    invoke-static {p0, v1, p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->methodFromField(Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/j256/ormlite/db/DatabaseType;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "is"

    .line 550
    invoke-static {p0, v1, p1, v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->methodFromField(Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/j256/ormlite/db/DatabaseType;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "is"

    invoke-static {p0, v1, p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->methodFromField(Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/j256/ormlite/db/DatabaseType;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 548
    invoke-static {p0, v2, p2, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findMethodFromNames(Ljava/lang/reflect/Field;ZZ[Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 551
    .local v0, "fieldGetMethod":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 552
    return-object v1

    .line 554
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 555
    if-eqz p2, :cond_1

    .line 556
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Return type of get method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 559
    :cond_1
    return-object v1

    .line 562
    :cond_2
    return-object v0
.end method

.method private findIndexName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;

    .line 688
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 691
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findMatchingEnumVal(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 5
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "unknownEnumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 659
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 662
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 663
    .local v3, "enumVal":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 664
    return-object v3

    .line 662
    .end local v3    # "enumVal":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 667
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknwown enum unknown name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static varargs findMethodFromNames(Ljava/lang/reflect/Field;ZZ[Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 8
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "isGetMethod"    # Z
    .param p2, "throwExceptions"    # Z
    .param p3, "methodNames"    # [Ljava/lang/String;

    .line 705
    const/4 v0, 0x0

    .line 706
    .local v0, "firstException":Ljava/lang/NoSuchMethodException;
    array-length v1, p3

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    .line 706
    .end local v0    # "firstException":Ljava/lang/NoSuchMethodException;
    .local v3, "firstException":Ljava/lang/NoSuchMethodException;
    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v4, p3, v0

    .line 708
    .local v4, "methodName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 710
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    return-object v5

    .line 715
    :catch_0
    move-exception v5

    goto :goto_1

    .line 713
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 715
    :goto_1
    nop

    .line 716
    .local v5, "nsme":Ljava/lang/NoSuchMethodException;
    if-nez v3, :cond_1

    .line 717
    move-object v3, v5

    .line 706
    .end local v4    # "methodName":Ljava/lang/String;
    .end local v5    # "nsme":Ljava/lang/NoSuchMethodException;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    :cond_2
    if-eqz p2, :cond_4

    .line 722
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find appropriate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    const-string v2, "get"

    goto :goto_2

    :cond_3
    const-string v2, "set"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " method for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 726
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static findSetMethod(Ljava/lang/reflect/Field;Lcom/j256/ormlite/db/DatabaseType;Z)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "throwExceptions"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 572
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "set"

    .line 573
    const/4 v2, 0x1

    invoke-static {p0, v1, p1, v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->methodFromField(Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/j256/ormlite/db/DatabaseType;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "set"

    invoke-static {p0, v1, p1, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->methodFromField(Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/j256/ormlite/db/DatabaseType;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 572
    invoke-static {p0, v3, p2, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findMethodFromNames(Ljava/lang/reflect/Field;ZZ[Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 574
    .local v0, "fieldSetMethod":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 575
    return-object v1

    .line 577
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_2

    .line 578
    if-eqz p2, :cond_1

    .line 579
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Return type of set method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " instead of void"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 582
    :cond_1
    return-object v1

    .line 585
    :cond_2
    return-object v0
.end method

.method public static fromDatabaseField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/j256/ormlite/field/DatabaseField;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 4
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "databaseField"    # Lcom/j256/ormlite/field/DatabaseField;

    .line 590
    new-instance v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-direct {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;-><init>()V

    .line 591
    .local v0, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fieldName:Ljava/lang/String;

    .line 592
    invoke-interface {p0}, Lcom/j256/ormlite/db/DatabaseType;->isEntityNamesMustBeUpCase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    iget-object v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fieldName:Ljava/lang/String;

    invoke-interface {p0, v1}, Lcom/j256/ormlite/db/DatabaseType;->upCaseEntityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fieldName:Ljava/lang/String;

    .line 595
    :cond_0
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->columnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnName:Ljava/lang/String;

    .line 596
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->dataType()Lcom/j256/ormlite/field/DataType;

    move-result-object v1

    iput-object v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataType:Lcom/j256/ormlite/field/DataType;

    .line 598
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->defaultValue()Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, "defaultValue":Ljava/lang/String;
    const-string v2, "__ormlite__ no default value string was specified"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 600
    iput-object v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->defaultValue:Ljava/lang/String;

    .line 602
    :cond_1
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->width()I

    move-result v2

    iput v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->width:I

    .line 603
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->canBeNull()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->canBeNull:Z

    .line 604
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->id()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->id:Z

    .line 605
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->generatedId()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->generatedId:Z

    .line 606
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->generatedIdSequence()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->generatedIdSequence:Ljava/lang/String;

    .line 607
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->foreign()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreign:Z

    .line 608
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->useGetSet()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->useGetSet:Z

    .line 609
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->unknownEnumName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findMatchingEnumVal(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->unknownEnumValue:Ljava/lang/Enum;

    .line 610
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->throwIfNull()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->throwIfNull:Z

    .line 611
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->format()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->format:Ljava/lang/String;

    .line 612
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->unique()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->unique:Z

    .line 613
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->uniqueCombo()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueCombo:Z

    .line 616
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->index()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->index:Z

    .line 617
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->indexName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->indexName:Ljava/lang/String;

    .line 618
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->uniqueIndex()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndex:Z

    .line 619
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->uniqueIndexName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndexName:Ljava/lang/String;

    .line 620
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->foreignAutoRefresh()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignAutoRefresh:Z

    .line 621
    iget-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignAutoRefresh:Z

    if-nez v2, :cond_3

    .line 622
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->maxForeignAutoRefreshLevel()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 625
    :cond_2
    const/4 v2, -0x1

    iput v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->maxForeignAutoRefreshLevel:I

    goto :goto_1

    .line 623
    :cond_3
    :goto_0
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->maxForeignAutoRefreshLevel()I

    move-result v2

    iput v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->maxForeignAutoRefreshLevel:I

    .line 627
    :goto_1
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->persisterClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisterClass:Ljava/lang/Class;

    .line 628
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->allowGeneratedIdInsert()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->allowGeneratedIdInsert:Z

    .line 629
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->columnDefinition()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnDefinition:Ljava/lang/String;

    .line 630
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->foreignAutoCreate()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignAutoCreate:Z

    .line 631
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->version()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->version:Z

    .line 632
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->foreignColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignColumnName:Ljava/lang/String;

    .line 633
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->readOnly()Z

    move-result v2

    iput-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->readOnly:Z

    .line 634
    invoke-interface {p3}, Lcom/j256/ormlite/field/DatabaseField;->fullColumnDefinition()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fullColumnDefinition:Ljava/lang/String;

    .line 636
    return-object v0
.end method

.method public static fromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 4
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 515
    const-class v0, Lcom/j256/ormlite/field/DatabaseField;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/DatabaseField;

    .line 516
    .local v0, "databaseField":Lcom/j256/ormlite/field/DatabaseField;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 517
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->persisted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    invoke-static {p0, p1, p2, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fromDatabaseField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/j256/ormlite/field/DatabaseField;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v1

    return-object v1

    .line 520
    :cond_0
    return-object v1

    .line 525
    :cond_1
    const-class v2, Lcom/j256/ormlite/field/ForeignCollectionField;

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/j256/ormlite/field/ForeignCollectionField;

    .line 526
    .local v2, "foreignCollection":Lcom/j256/ormlite/field/ForeignCollectionField;
    if-eqz v2, :cond_2

    .line 527
    invoke-static {p0, p2, v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fromForeignCollection(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/reflect/Field;Lcom/j256/ormlite/field/ForeignCollectionField;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v1

    return-object v1

    .line 533
    :cond_2
    sget-object v3, Lcom/j256/ormlite/field/DatabaseFieldConfig;->javaxPersistenceConfigurer:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

    if-nez v3, :cond_3

    .line 534
    return-object v1

    .line 537
    :cond_3
    sget-object v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->javaxPersistenceConfigurer:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

    invoke-interface {v1, p0, p2}, Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;->createFieldConfig(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v1

    return-object v1
.end method

.method private static fromForeignCollection(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/reflect/Field;Lcom/j256/ormlite/field/ForeignCollectionField;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 2
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "foreignCollection"    # Lcom/j256/ormlite/field/ForeignCollectionField;

    .line 672
    new-instance v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-direct {v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;-><init>()V

    .line 673
    .local v0, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fieldName:Ljava/lang/String;

    .line 674
    invoke-interface {p2}, Lcom/j256/ormlite/field/ForeignCollectionField;->columnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 675
    invoke-interface {p2}, Lcom/j256/ormlite/field/ForeignCollectionField;->columnName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnName:Ljava/lang/String;

    .line 677
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollection:Z

    .line 678
    invoke-interface {p2}, Lcom/j256/ormlite/field/ForeignCollectionField;->eager()Z

    move-result v1

    iput-boolean v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionEager:Z

    .line 679
    invoke-interface {p2}, Lcom/j256/ormlite/field/ForeignCollectionField;->maxEagerLevel()I

    move-result v1

    iput v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionMaxEagerLevel:I

    .line 680
    invoke-interface {p2}, Lcom/j256/ormlite/field/ForeignCollectionField;->orderColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionOrderColumnName:Ljava/lang/String;

    .line 681
    invoke-interface {p2}, Lcom/j256/ormlite/field/ForeignCollectionField;->orderAscending()Z

    move-result v1

    iput-boolean v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionOrderAscending:Z

    .line 682
    invoke-interface {p2}, Lcom/j256/ormlite/field/ForeignCollectionField;->columnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionColumnName:Ljava/lang/String;

    .line 683
    invoke-interface {p2}, Lcom/j256/ormlite/field/ForeignCollectionField;->foreignFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionForeignFieldName:Ljava/lang/String;

    .line 684
    return-object v0
.end method

.method private static methodFromField(Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/j256/ormlite/db/DatabaseType;Z)Ljava/lang/String;
    .locals 5
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p3, "forceEnglish"    # Z

    .line 732
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, "start":Ljava/lang/String;
    invoke-interface {p2, v2, p3}, Lcom/j256/ormlite/db/DatabaseType;->upCaseString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 736
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v0, v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "newValue"    # Ljava/lang/String;

    .line 696
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 699
    :cond_0
    return-object p0

    .line 697
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getColumnDefinition()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnDefinition:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataPersister()Lcom/j256/ormlite/field/DataPersister;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataType:Lcom/j256/ormlite/field/DataType;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v0

    return-object v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    return-object v0
.end method

.method public getDataType()Lcom/j256/ormlite/field/DataType;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataType:Lcom/j256/ormlite/field/DataType;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getForeignCollectionColumnName()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getForeignCollectionForeignFieldName()Ljava/lang/String;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionForeignFieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getForeignCollectionMaxEagerLevel()I
    .locals 1

    .line 404
    iget v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionMaxEagerLevel:I

    return v0
.end method

.method public getForeignCollectionOrderColumnName()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionOrderColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getForeignColumnName()Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getForeignTableConfig()Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "*>;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignTableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getFullColumnDefinition()Ljava/lang/String;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fullColumnDefinition:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneratedIdSequence()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->generatedIdSequence:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;

    .line 330
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->index:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->indexName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 331
    invoke-direct {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findIndexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->indexName:Ljava/lang/String;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->indexName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxForeignAutoRefreshLevel()I
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignAutoRefresh:Z

    if-eqz v0, :cond_0

    .line 373
    iget v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->maxForeignAutoRefreshLevel:I

    return v0

    .line 375
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPersisterClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/j256/ormlite/field/DataPersister;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisterClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getUniqueIndexName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;

    .line 349
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndex:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndexName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 350
    invoke-direct {p0, p1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findIndexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndexName:Ljava/lang/String;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndexName:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknownEnumValue()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->unknownEnumValue:Ljava/lang/Enum;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->width:I

    return v0
.end method

.method public isAllowGeneratedIdInsert()Z
    .locals 1

    .line 452
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->allowGeneratedIdInsert:Z

    return v0
.end method

.method public isCanBeNull()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->canBeNull:Z

    return v0
.end method

.method public isForeign()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreign:Z

    return v0
.end method

.method public isForeignAutoCreate()Z
    .locals 1

    .line 476
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignAutoCreate:Z

    return v0
.end method

.method public isForeignAutoRefresh()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignAutoRefresh:Z

    return v0
.end method

.method public isForeignCollection()Z
    .locals 1

    .line 388
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollection:Z

    return v0
.end method

.method public isForeignCollectionEager()Z
    .locals 1

    .line 396
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionEager:Z

    return v0
.end method

.method public isForeignCollectionOrderAscending()Z
    .locals 1

    .line 428
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionOrderAscending:Z

    return v0
.end method

.method public isGeneratedId()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->generatedId:Z

    return v0
.end method

.method public isId()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->id:Z

    return v0
.end method

.method public isIndex()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->index:Z

    return v0
.end method

.method public isPersisted()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisted:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 500
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->readOnly:Z

    return v0
.end method

.method public isThrowIfNull()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->throwIfNull:Z

    return v0
.end method

.method public isUnique()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->unique:Z

    return v0
.end method

.method public isUniqueCombo()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueCombo:Z

    return v0
.end method

.method public isUniqueIndex()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndex:Z

    return v0
.end method

.method public isUseGetSet()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->useGetSet:Z

    return v0
.end method

.method public isVersion()Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->version:Z

    return v0
.end method

.method public postProcess()V
    .locals 2

    .line 643
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignColumnName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignAutoRefresh:Z

    .line 646
    :cond_0
    iget-boolean v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignAutoRefresh:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->maxForeignAutoRefreshLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 647
    const/4 v0, 0x2

    iput v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->maxForeignAutoRefreshLevel:I

    .line 649
    :cond_1
    return-void
.end method

.method public setAllowGeneratedIdInsert(Z)V
    .locals 0
    .param p1, "allowGeneratedIdInsert"    # Z

    .line 456
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->allowGeneratedIdInsert:Z

    .line 457
    return-void
.end method

.method public setCanBeNull(Z)V
    .locals 0
    .param p1, "canBeNull"    # Z

    .line 203
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->canBeNull:Z

    .line 204
    return-void
.end method

.method public setColumnDefinition(Ljava/lang/String;)V
    .locals 0
    .param p1, "columnDefinition"    # Ljava/lang/String;

    .line 464
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnDefinition:Ljava/lang/String;

    .line 465
    return-void
.end method

.method public setColumnName(Ljava/lang/String;)V
    .locals 0
    .param p1, "columnName"    # Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->columnName:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setDataPersister(Lcom/j256/ormlite/field/DataPersister;)V
    .locals 0
    .param p1, "dataPersister"    # Lcom/j256/ormlite/field/DataPersister;

    .line 170
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataPersister:Lcom/j256/ormlite/field/DataPersister;

    .line 171
    return-void
.end method

.method public setDataType(Lcom/j256/ormlite/field/DataType;)V
    .locals 0
    .param p1, "dataType"    # Lcom/j256/ormlite/field/DataType;

    .line 152
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->dataType:Lcom/j256/ormlite/field/DataType;

    .line 153
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->defaultValue:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fieldName:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setForeign(Z)V
    .locals 0
    .param p1, "foreign"    # Z

    .line 247
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreign:Z

    .line 248
    return-void
.end method

.method public setForeignAutoCreate(Z)V
    .locals 0
    .param p1, "foreignAutoCreate"    # Z

    .line 480
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignAutoCreate:Z

    .line 481
    return-void
.end method

.method public setForeignAutoRefresh(Z)V
    .locals 0
    .param p1, "foreignAutoRefresh"    # Z

    .line 360
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignAutoRefresh:Z

    .line 361
    return-void
.end method

.method public setForeignCollection(Z)V
    .locals 0
    .param p1, "foreignCollection"    # Z

    .line 392
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollection:Z

    .line 393
    return-void
.end method

.method public setForeignCollectionColumnName(Ljava/lang/String;)V
    .locals 0
    .param p1, "foreignCollectionColumn"    # Ljava/lang/String;

    .line 416
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionColumnName:Ljava/lang/String;

    .line 417
    return-void
.end method

.method public setForeignCollectionEager(Z)V
    .locals 0
    .param p1, "foreignCollectionEager"    # Z

    .line 400
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionEager:Z

    .line 401
    return-void
.end method

.method public setForeignCollectionForeignFieldName(Ljava/lang/String;)V
    .locals 0
    .param p1, "foreignCollectionForeignFieldName"    # Ljava/lang/String;

    .line 440
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionForeignFieldName:Ljava/lang/String;

    .line 441
    return-void
.end method

.method public setForeignCollectionMaxEagerLevel(I)V
    .locals 0
    .param p1, "foreignCollectionMaxEagerLevel"    # I

    .line 408
    iput p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionMaxEagerLevel:I

    .line 409
    return-void
.end method

.method public setForeignCollectionOrderAscending(Z)V
    .locals 0
    .param p1, "foreignCollectionOrderAscending"    # Z

    .line 432
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionOrderAscending:Z

    .line 433
    return-void
.end method

.method public setForeignCollectionOrderColumnName(Ljava/lang/String;)V
    .locals 0
    .param p1, "foreignCollectionOrderColumn"    # Ljava/lang/String;

    .line 424
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignCollectionOrderColumnName:Ljava/lang/String;

    .line 425
    return-void
.end method

.method public setForeignColumnName(Ljava/lang/String;)V
    .locals 0
    .param p1, "foreignColumnName"    # Ljava/lang/String;

    .line 496
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignColumnName:Ljava/lang/String;

    .line 497
    return-void
.end method

.method public setForeignTableConfig(Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "*>;)V"
        }
    .end annotation

    .line 259
    .local p1, "foreignTableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->foreignTableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 260
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .line 302
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->format:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setFullColumnDefinition(Ljava/lang/String;)V
    .locals 0
    .param p1, "fullColumnDefinition"    # Ljava/lang/String;

    .line 472
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fullColumnDefinition:Ljava/lang/String;

    .line 473
    return-void
.end method

.method public setGeneratedId(Z)V
    .locals 0
    .param p1, "generatedId"    # Z

    .line 225
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->generatedId:Z

    .line 226
    return-void
.end method

.method public setGeneratedIdSequence(Ljava/lang/String;)V
    .locals 0
    .param p1, "generatedIdSequence"    # Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->generatedIdSequence:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setId(Z)V
    .locals 0
    .param p1, "id"    # Z

    .line 214
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->id:Z

    .line 215
    return-void
.end method

.method public setIndex(Z)V
    .locals 0
    .param p1, "index"    # Z

    .line 326
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->index:Z

    .line 327
    return-void
.end method

.method public setIndexName(Ljava/lang/String;)V
    .locals 0
    .param p1, "indexName"    # Ljava/lang/String;

    .line 337
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->indexName:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setMaxForeignAutoRefreshLevel(I)V
    .locals 0
    .param p1, "maxForeignLevel"    # I

    .line 380
    iput p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->maxForeignAutoRefreshLevel:I

    .line 381
    return-void
.end method

.method public setPersisted(Z)V
    .locals 0
    .param p1, "persisted"    # Z

    .line 294
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisted:Z

    .line 295
    return-void
.end method

.method public setPersisterClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/j256/ormlite/field/DataPersister;",
            ">;)V"
        }
    .end annotation

    .line 448
    .local p1, "persisterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->persisterClass:Ljava/lang/Class;

    .line 449
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0
    .param p1, "readOnly"    # Z

    .line 504
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->readOnly:Z

    .line 505
    return-void
.end method

.method public setThrowIfNull(Z)V
    .locals 0
    .param p1, "throwIfNull"    # Z

    .line 286
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->throwIfNull:Z

    .line 287
    return-void
.end method

.method public setUnique(Z)V
    .locals 0
    .param p1, "unique"    # Z

    .line 310
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->unique:Z

    .line 311
    return-void
.end method

.method public setUniqueCombo(Z)V
    .locals 0
    .param p1, "uniqueCombo"    # Z

    .line 318
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueCombo:Z

    .line 319
    return-void
.end method

.method public setUniqueIndex(Z)V
    .locals 0
    .param p1, "uniqueIndex"    # Z

    .line 345
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndex:Z

    .line 346
    return-void
.end method

.method public setUniqueIndexName(Ljava/lang/String;)V
    .locals 0
    .param p1, "uniqueIndexName"    # Ljava/lang/String;

    .line 356
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->uniqueIndexName:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setUnknownEnumValue(Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 278
    .local p1, "unknownEnumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->unknownEnumValue:Ljava/lang/Enum;

    .line 279
    return-void
.end method

.method public setUseGetSet(Z)V
    .locals 0
    .param p1, "useGetSet"    # Z

    .line 270
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->useGetSet:Z

    .line 271
    return-void
.end method

.method public setVersion(Z)V
    .locals 0
    .param p1, "version"    # Z

    .line 488
    iput-boolean p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->version:Z

    .line 489
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 192
    iput p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->width:I

    .line 193
    return-void
.end method
