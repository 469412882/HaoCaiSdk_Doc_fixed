.class final Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/utils/basic/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mCanRemove:Z

.field mIndex:I

.field final mOffset:I

.field mSize:I

.field final synthetic this$0:Lcom/qihoo360/replugin/utils/basic/MapCollections;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/utils/basic/MapCollections;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/qihoo360/replugin/utils/basic/MapCollections;
    .param p2, "offset"    # I

    .line 42
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;, "Lcom/qihoo360/replugin/utils/basic/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iput-object p1, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->this$0:Lcom/qihoo360/replugin/utils/basic/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 43
    iput p2, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->mOffset:I

    .line 44
    invoke-virtual {p1}, Lcom/qihoo360/replugin/utils/basic/MapCollections;->colGetSize()I

    move-result v0

    iput v0, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->mSize:I

    .line 45
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 49
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;, "Lcom/qihoo360/replugin/utils/basic/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget v0, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->mIndex:I

    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->mSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;, "Lcom/qihoo360/replugin/utils/basic/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->this$0:Lcom/qihoo360/replugin/utils/basic/MapCollections;

    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->mIndex:I

    iget v2, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->mOffset:I

    invoke-virtual {v0, v1, v2}, Lcom/qihoo360/replugin/utils/basic/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "res":Ljava/lang/Object;
    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->mIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->mIndex:I

    .line 56
    iput-boolean v2, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 57
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 62
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;, "Lcom/qihoo360/replugin/utils/basic/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget-boolean v0, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->mCanRemove:Z

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 65
    :cond_0
    iget v0, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->mIndex:I

    .line 66
    iget v0, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->mSize:I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 68
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->this$0:Lcom/qihoo360/replugin/utils/basic/MapCollections;

    iget v1, p0, Lcom/qihoo360/replugin/utils/basic/MapCollections$ArrayIterator;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/qihoo360/replugin/utils/basic/MapCollections;->colRemoveAt(I)V

    .line 69
    return-void
.end method
