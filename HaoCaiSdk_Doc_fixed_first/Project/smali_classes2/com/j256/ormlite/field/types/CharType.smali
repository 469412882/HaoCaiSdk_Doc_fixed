.class public Lcom/j256/ormlite/field/types/CharType;
.super Lcom/j256/ormlite/field/types/CharacterObjectType;
.source "CharType.java"


# static fields
.field private static final singleTon:Lcom/j256/ormlite/field/types/CharType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/j256/ormlite/field/types/CharType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/CharType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/CharType;->singleTon:Lcom/j256/ormlite/field/types/CharType;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 20
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->CHAR:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/CharacterObjectType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 21
    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/field/SqlType;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 27
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/CharacterObjectType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 28
    return-void
.end method

.method public static getSingleton()Lcom/j256/ormlite/field/types/CharType;
    .locals 1

    .line 16
    sget-object v0, Lcom/j256/ormlite/field/types/CharType;->singleTon:Lcom/j256/ormlite/field/types/CharType;

    return-object v0
.end method


# virtual methods
.method public isPrimitive()Z
    .locals 1

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "javaObject"    # Ljava/lang/Object;

    .line 32
    move-object v0, p2

    check-cast v0, Ljava/lang/Character;

    .line 34
    .local v0, "character":Ljava/lang/Character;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    return-object v0

    .line 35
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method
