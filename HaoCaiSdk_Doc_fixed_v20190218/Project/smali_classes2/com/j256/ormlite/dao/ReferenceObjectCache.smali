.class public Lcom/j256/ormlite/dao/ReferenceObjectCache;
.super Ljava/lang/Object;
.source "ReferenceObjectCache.java"

# interfaces
.implements Lcom/j256/ormlite/dao/ObjectCache;


# instance fields
.field private final classMaps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final useWeak:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "useWeak"    # Z

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/dao/ReferenceObjectCache;->classMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    iput-boolean p1, p0, Lcom/j256/ormlite/dao/ReferenceObjectCache;->useWeak:Z

    .line 31
    return-void
.end method

.method private cleanMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 167
    .local p1, "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/Reference<Ljava/lang/Object;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 168
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/ref/Reference<Ljava/lang/Object;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 173
    :cond_1
    return-void
.end method

.method private getMapForClass(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 176
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/ReferenceObjectCache;->classMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 177
    .local v0, "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/Reference<Ljava/lang/Object;>;>;"
    if-nez v0, :cond_0

    .line 178
    const/4 v1, 0x0

    return-object v1

    .line 180
    :cond_0
    return-object v0
.end method

.method public static makeSoftCache()Lcom/j256/ormlite/dao/ReferenceObjectCache;
    .locals 2

    .line 44
    new-instance v0, Lcom/j256/ormlite/dao/ReferenceObjectCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/j256/ormlite/dao/ReferenceObjectCache;-><init>(Z)V

    return-object v0
.end method

.method public static makeWeakCache()Lcom/j256/ormlite/dao/ReferenceObjectCache;
    .locals 2

    .line 37
    new-instance v0, Lcom/j256/ormlite/dao/ReferenceObjectCache;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/j256/ormlite/dao/ReferenceObjectCache;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public cleanNullReferences(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 151
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/ReferenceObjectCache;->getMapForClass(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 152
    .local v0, "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/Reference<Ljava/lang/Object;>;>;"
    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0, v0}, Lcom/j256/ormlite/dao/ReferenceObjectCache;->cleanMap(Ljava/util/Map;)V

    .line 155
    :cond_0
    return-void
.end method

.method public cleanNullReferencesAll()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()V"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/j256/ormlite/dao/ReferenceObjectCache;->classMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 162
    .local v1, "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/Reference<Ljava/lang/Object;>;>;"
    invoke-direct {p0, v1}, Lcom/j256/ormlite/dao/ReferenceObjectCache;->cleanMap(Ljava/util/Map;)V

    .line 163
    .end local v1    # "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/Reference<Ljava/lang/Object;>;>;"
    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public clear(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 91
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/ReferenceObjectCache;->getMapForClass(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 92
    .local v0, "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/Reference<Ljava/lang/Object;>;>;"
    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 95
    :cond_0
    return-void
.end method

.method public clearAll()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/j256/ormlite/dao/ReferenceObjectCache;->classMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 100
    .local v1, "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/Reference<Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 101
    .end local v1    # "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/Reference<Ljava/lang/Object;>;>;"
    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TID;)TT;"
        }
    .end annotation

    .line 58
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "id":Ljava/lang/Object;, "TID;"
    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/ReferenceObjectCache;->getMapForClass(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 59
    .local v0, "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/Reference<Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 60
    return-object v1

    .line 62
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 63
    .local v2, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Object;>;"
    if-nez v2, :cond_1

    .line 64
    return-object v1

    .line 66
    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 67
    .local v3, "obj":Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 68
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-object v1

    .line 72
    :cond_2
    move-object v1, v3

    .line 73
    .local v1, "castObj":Ljava/lang/Object;, "TT;"
    return-object v1
.end method

.method public put(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TID;TT;)V"
        }
    .end annotation

    .line 79
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "id":Ljava/lang/Object;, "TID;"
    .local p3, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/ReferenceObjectCache;->getMapForClass(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 80
    .local v0, "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/Reference<Ljava/lang/Object;>;>;"
    if-eqz v0, :cond_1

    .line 81
    iget-boolean v1, p0, Lcom/j256/ormlite/dao/ReferenceObjectCache;->useWeak:Z

    if-eqz v1, :cond_0

    .line 82
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_0
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized registerClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/ReferenceObjectCache;->classMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 50
    .local v0, "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/Reference<Ljava/lang/Object;>;>;"
    if-nez v0, :cond_0

    .line 51
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v1

    .line 52
    iget-object v1, p0, Lcom/j256/ormlite/dao/ReferenceObjectCache;->classMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    .line 48
    .end local v0    # "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/Reference<Ljava/lang/Object;>;>;"
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public remove(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TID;)V"
        }
    .end annotation

    .line 106
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "id":Ljava/lang/Object;, "TID;"
    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/ReferenceObjectCache;->getMapForClass(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 107
    .local v0, "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/Reference<Ljava/lang/Object;>;>;"
    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    return-void
.end method

.method public size(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)I"
        }
    .end annotation

    .line 130
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/ReferenceObjectCache;->getMapForClass(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 131
    .local v0, "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/Reference<Ljava/lang/Object;>;>;"
    if-nez v0, :cond_0

    .line 132
    const/4 v1, 0x0

    return v1

    .line 134
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    return v1
.end method

.method public sizeAll()I
    .locals 4

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "size":I
    iget-object v1, p0, Lcom/j256/ormlite/dao/ReferenceObjectCache;->classMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 142
    .local v2, "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/Reference<Ljava/lang/Object;>;>;"
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 143
    .end local v2    # "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/Reference<Ljava/lang/Object;>;>;"
    goto :goto_0

    .line 144
    :cond_0
    return v0
.end method

.method public updateId(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TID;TID;)TT;"
        }
    .end annotation

    .line 114
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "oldId":Ljava/lang/Object;, "TID;"
    .local p3, "newId":Ljava/lang/Object;, "TID;"
    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/ReferenceObjectCache;->getMapForClass(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 115
    .local v0, "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/ref/Reference<Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 116
    return-object v1

    .line 118
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 119
    .local v2, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Object;>;"
    if-nez v2, :cond_1

    .line 120
    return-object v1

    .line 122
    :cond_1
    invoke-interface {v0, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 125
    .local v1, "castObj":Ljava/lang/Object;, "TT;"
    return-object v1
.end method
