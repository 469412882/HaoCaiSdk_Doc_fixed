.class public final Lorg/jetbrains/anko/db/SQLiteParserHelpersKt__SqlParserHelpersKt$rowParser$10;
.super Ljava/lang/Object;
.source "SqlParserHelpers.kt"

# interfaces
.implements Lorg/jetbrains/anko/db/RowParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jetbrains/anko/db/SQLiteParserHelpersKt__SqlParserHelpersKt;->rowParser(Lkotlin/jvm/functions/Function10;)Lorg/jetbrains/anko/db/RowParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jetbrains/anko/db/RowParser<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0003\u001a\u00028\u00002\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005H\u0016\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "org/jetbrains/anko/db/SQLiteParserHelpersKt__SqlParserHelpersKt$rowParser$10",
        "Lorg/jetbrains/anko/db/RowParser;",
        "(Lkotlin/jvm/functions/Function10;)V",
        "parseRow",
        "columns",
        "",
        "",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "anko-sqlite_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# instance fields
.field final synthetic $parser:Lkotlin/jvm/functions/Function10;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function10;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Lkotlin/jvm/functions/Function10;

    .line 125
    iput-object p1, p0, Lorg/jetbrains/anko/db/SQLiteParserHelpersKt__SqlParserHelpersKt$rowParser$10;->$parser:Lkotlin/jvm/functions/Function10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseRow([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "columns"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    const-string v0, "columns"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    array-length v0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 128
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Invalid row: 10 columns required"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 131
    :cond_0
    nop

    .line 132
    iget-object v1, p0, Lorg/jetbrains/anko/db/SQLiteParserHelpersKt__SqlParserHelpersKt$rowParser$10;->$parser:Lkotlin/jvm/functions/Function10;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Object;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Object;

    const/4 v0, 0x3

    aget-object v0, p1, v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Object;

    const/4 v0, 0x4

    aget-object v0, p1, v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Object;

    const/4 v0, 0x5

    aget-object v0, p1, v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Object;

    const/4 v0, 0x6

    aget-object v0, p1, v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Object;

    const/4 v0, 0x7

    aget-object v0, p1, v0

    move-object v9, v0

    check-cast v9, Ljava/lang/Object;

    const/16 v0, 0x8

    aget-object v0, p1, v0

    move-object v10, v0

    check-cast v10, Ljava/lang/Object;

    const/16 v0, 0x9

    aget-object v0, p1, v0

    move-object v11, v0

    check-cast v11, Ljava/lang/Object;

    invoke-interface/range {v1 .. v11}, Lkotlin/jvm/functions/Function10;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
