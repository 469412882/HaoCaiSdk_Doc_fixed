.class public Lcom/j256/ormlite/dao/LazyForeignCollection;
.super Lcom/j256/ormlite/dao/BaseForeignCollection;
.source "LazyForeignCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/dao/BaseForeignCollection<",
        "TT;TID;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4bc855175671af79L


# instance fields
.field private transient lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "parent"    # Ljava/lang/Object;
    .param p3, "parentId"    # Ljava/lang/Object;
    .param p4, "foreignFieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p5, "orderColumn"    # Ljava/lang/String;
    .param p6, "orderAscending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    .local p1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    invoke-direct/range {p0 .. p6}, Lcom/j256/ormlite/dao/BaseForeignCollection;-><init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;Z)V

    .line 44
    return-void
.end method


# virtual methods
.method public closeLastIterator()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    .line 116
    :cond_0
    return-void
.end method

.method public closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->closeableIterator(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public closeableIterator(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not build lazy iterator for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 150
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    .line 152
    .local v0, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 154
    const/4 v1, 0x1

    .line 159
    invoke-static {v0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 154
    return v1

    .line 157
    :cond_1
    const/4 v1, 0x0

    .line 159
    invoke-static {v0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 157
    return v1

    .line 159
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 165
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 166
    .local v0, "leftOvers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v1

    .line 168
    .local v1, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    :goto_0
    :try_start_0
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-static {v1}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 171
    return v2

    .line 173
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 286
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getWrappedIterable()Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableWrappedIterable<",
            "TT;>;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->getWrappedIterable(I)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedIterable(I)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableWrappedIterable<",
            "TT;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;

    new-instance v1, Lcom/j256/ormlite/dao/LazyForeignCollection$1;

    invoke-direct {v1, p0, p1}, Lcom/j256/ormlite/dao/LazyForeignCollection$1;-><init>(Lcom/j256/ormlite/dao/LazyForeignCollection;I)V

    invoke-direct {v0, v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;-><init>(Lcom/j256/ormlite/dao/CloseableIterable;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 299
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEager()Z
    .locals 1

    .line 120
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 140
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    .line 142
    .local v0, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 142
    return v1

    .line 144
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public iterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->closeableIterator(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/LazyForeignCollection;->closeableIterator(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 30
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iteratorThrow()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/LazyForeignCollection;->seperateIteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    .line 84
    iget-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    return-object v0
.end method

.method public refreshAll()I
    .locals 2

    .line 267
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call updateAll() on a lazy collection."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refreshCollection()I
    .locals 1

    .line 273
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .line 179
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    .line 181
    .local v0, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    const/4 v1, 0x1

    .line 189
    invoke-static {v0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 184
    return v1

    .line 187
    :cond_1
    const/4 v1, 0x0

    .line 189
    invoke-static {v0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 187
    return v1

    .line 189
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 195
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 196
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v1

    .line 198
    .local v1, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    const/4 v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    nop

    .line 206
    invoke-static {v1}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 204
    return v0

    .line 206
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method seperateIteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 307
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal DAO object is null.  Maybe the collection was deserialized or otherwise constructed wrongly.  Use dao.assignEmptyForeignCollection(...) or dao.getEmptyForeignCollection(...) instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->getPreparedQuery()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/j256/ormlite/dao/Dao;->iterator(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 3

    .line 125
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    .line 128
    .local v0, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    const/4 v1, 0x0

    .line 128
    .local v1, "sizeC":I
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->moveToNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_0
    nop

    .line 134
    invoke-static {v0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 132
    return v1

    .line 134
    .end local v1    # "sizeC":I
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 212
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v1

    .line 215
    .local v1, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    :goto_0
    :try_start_0
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-static {v1}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 218
    return-object v2

    .line 220
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .line 226
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    const/4 v0, 0x0

    .line 227
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    const/4 v1, 0x0

    .line 228
    .local v1, "itemC":I
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v2

    .line 230
    .local v2, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    :goto_0
    :try_start_0
    invoke-interface {v2}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    invoke-interface {v2}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 234
    .local v3, "castData":Ljava/lang/Object;, "TE;"
    array-length v4, p1

    if-lt v1, v4, :cond_1

    .line 235
    if-nez v0, :cond_0

    .line 236
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 237
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, p1, v5

    .line 238
    .local v6, "arrayData":Ljava/lang/Object;, "TE;"
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v6    # "arrayData":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 241
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 243
    :cond_1
    aput-object v3, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 246
    .end local v3    # "castData":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 248
    :cond_2
    invoke-static {v2}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 249
    nop

    .line 250
    if-nez v0, :cond_4

    .line 251
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    .line 252
    const/4 v3, 0x0

    aput-object v3, p1, v1

    .line 254
    :cond_3
    return-object p1

    .line 256
    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 248
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method

.method public updateAll()I
    .locals 2

    .line 262
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call updateAll() on a lazy collection."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
