.class public Lc8/pAq;
.super Ljava/lang/Object;
.source "SerializedObserver.java"

# interfaces
.implements Lc8/Wlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/oAq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Wlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final actual:Lc8/Wlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Wlq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private emitting:Z

.field private final nl:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<TT;>;"
        }
    .end annotation
.end field

.field private queue:Lc8/oAq;

.field private volatile terminated:Z


# direct methods
.method public constructor <init>(Lc8/Wlq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Wlq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lc8/pAq;, "Lrx/observers/SerializedObserver<TT;>;"
    .local p1, "s":Lc8/Wlq;, "Lrx/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    iput-object v0, p0, Lc8/pAq;->nl:Lc8/cpq;

    .line 68
    iput-object p1, p0, Lc8/pAq;->actual:Lc8/Wlq;

    .line 69
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 158
    .local p0, "this":Lc8/pAq;, "Lrx/observers/SerializedObserver<TT;>;"
    iget-boolean v1, p0, Lc8/pAq;->terminated:Z

    if-eqz v1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 161
    :cond_0
    monitor-enter p0

    .line 162
    :try_start_0
    iget-boolean v1, p0, Lc8/pAq;->terminated:Z

    if-eqz v1, :cond_1

    .line 163
    monitor-exit p0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 165
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lc8/pAq;->terminated:Z

    .line 166
    iget-boolean v1, p0, Lc8/pAq;->emitting:Z

    if-eqz v1, :cond_3

    .line 167
    iget-object v0, p0, Lc8/pAq;->queue:Lc8/oAq;

    .line 168
    .local v0, "list":Lc8/oAq;
    if-nez v0, :cond_2

    .line 169
    new-instance v0, Lc8/oAq;

    .end local v0    # "list":Lc8/oAq;
    invoke-direct {v0}, Lc8/oAq;-><init>()V

    .line 170
    .restart local v0    # "list":Lc8/oAq;
    iput-object v0, p0, Lc8/pAq;->queue:Lc8/oAq;

    .line 172
    :cond_2
    iget-object v1, p0, Lc8/pAq;->nl:Lc8/cpq;

    invoke-virtual {v1}, Lc8/cpq;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/oAq;->add(Ljava/lang/Object;)V

    .line 173
    monitor-exit p0

    goto :goto_0

    .line 175
    .end local v0    # "list":Lc8/oAq;
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/pAq;->emitting:Z

    .line 176
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    iget-object v1, p0, Lc8/pAq;->actual:Lc8/Wlq;

    invoke-interface {v1}, Lc8/Wlq;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 129
    .local p0, "this":Lc8/pAq;, "Lrx/observers/SerializedObserver<TT;>;"
    invoke-static {p1}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 130
    iget-boolean v1, p0, Lc8/pAq;->terminated:Z

    if-eqz v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 133
    :cond_0
    monitor-enter p0

    .line 134
    :try_start_0
    iget-boolean v1, p0, Lc8/pAq;->terminated:Z

    if-eqz v1, :cond_1

    .line 135
    monitor-exit p0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 137
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lc8/pAq;->terminated:Z

    .line 138
    iget-boolean v1, p0, Lc8/pAq;->emitting:Z

    if-eqz v1, :cond_3

    .line 143
    iget-object v0, p0, Lc8/pAq;->queue:Lc8/oAq;

    .line 144
    .local v0, "list":Lc8/oAq;
    if-nez v0, :cond_2

    .line 145
    new-instance v0, Lc8/oAq;

    .end local v0    # "list":Lc8/oAq;
    invoke-direct {v0}, Lc8/oAq;-><init>()V

    .line 146
    .restart local v0    # "list":Lc8/oAq;
    iput-object v0, p0, Lc8/pAq;->queue:Lc8/oAq;

    .line 148
    :cond_2
    iget-object v1, p0, Lc8/pAq;->nl:Lc8/cpq;

    invoke-virtual {v1, p1}, Lc8/cpq;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/oAq;->add(Ljava/lang/Object;)V

    .line 149
    monitor-exit p0

    goto :goto_0

    .line 151
    .end local v0    # "list":Lc8/oAq;
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/pAq;->emitting:Z

    .line 152
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    iget-object v1, p0, Lc8/pAq;->actual:Lc8/Wlq;

    invoke-interface {v1, p1}, Lc8/Wlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/pAq;, "Lrx/observers/SerializedObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x1

    .line 73
    iget-boolean v6, p0, Lc8/pAq;->terminated:Z

    if-eqz v6, :cond_0

    .line 121
    :goto_0
    return-void

    .line 76
    :cond_0
    monitor-enter p0

    .line 77
    :try_start_0
    iget-boolean v6, p0, Lc8/pAq;->terminated:Z

    if-eqz v6, :cond_1

    .line 78
    monitor-exit p0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 80
    :cond_1
    :try_start_1
    iget-boolean v6, p0, Lc8/pAq;->emitting:Z

    if-eqz v6, :cond_3

    .line 81
    iget-object v4, p0, Lc8/pAq;->queue:Lc8/oAq;

    .line 82
    .local v4, "list":Lc8/oAq;
    if-nez v4, :cond_2

    .line 83
    new-instance v4, Lc8/oAq;

    .end local v4    # "list":Lc8/oAq;
    invoke-direct {v4}, Lc8/oAq;-><init>()V

    .line 84
    .restart local v4    # "list":Lc8/oAq;
    iput-object v4, p0, Lc8/pAq;->queue:Lc8/oAq;

    .line 86
    :cond_2
    iget-object v6, p0, Lc8/pAq;->nl:Lc8/cpq;

    invoke-virtual {v6, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lc8/oAq;->add(Ljava/lang/Object;)V

    .line 87
    monitor-exit p0

    goto :goto_0

    .line 89
    .end local v4    # "list":Lc8/oAq;
    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lc8/pAq;->emitting:Z

    .line 90
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    iget-object v6, p0, Lc8/pAq;->actual:Lc8/Wlq;

    invoke-interface {v6, p1}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    :cond_4
    monitor-enter p0

    .line 101
    :try_start_3
    iget-object v4, p0, Lc8/pAq;->queue:Lc8/oAq;

    .line 102
    .restart local v4    # "list":Lc8/oAq;
    if-nez v4, :cond_5

    .line 103
    const/4 v6, 0x0

    iput-boolean v6, p0, Lc8/pAq;->emitting:Z

    .line 104
    monitor-exit p0

    goto :goto_0

    .line 107
    .end local v4    # "list":Lc8/oAq;
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Throwable;
    iput-boolean v8, p0, Lc8/pAq;->terminated:Z

    .line 95
    iget-object v6, p0, Lc8/pAq;->actual:Lc8/Wlq;

    invoke-static {v1, v6, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v4    # "list":Lc8/oAq;
    :cond_5
    const/4 v6, 0x0

    :try_start_4
    iput-object v6, p0, Lc8/pAq;->queue:Lc8/oAq;

    .line 107
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    iget-object v0, v4, Lc8/oAq;->array:[Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v5, v0, v2

    .line 109
    .local v5, "o":Ljava/lang/Object;
    if-eqz v5, :cond_4

    .line 113
    :try_start_5
    iget-object v6, p0, Lc8/pAq;->nl:Lc8/cpq;

    iget-object v7, p0, Lc8/pAq;->actual:Lc8/Wlq;

    invoke-virtual {v6, v7, v5}, Lc8/cpq;->accept(Lc8/Wlq;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 114
    const/4 v6, 0x1

    iput-boolean v6, p0, Lc8/pAq;->terminated:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 117
    :catch_1
    move-exception v1

    .line 118
    .restart local v1    # "e":Ljava/lang/Throwable;
    iput-boolean v8, p0, Lc8/pAq;->terminated:Z

    .line 119
    invoke-static {v1}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 120
    iget-object v6, p0, Lc8/pAq;->actual:Lc8/Wlq;

    invoke-static {v1, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    invoke-interface {v6, v7}, Lc8/Wlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 108
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
