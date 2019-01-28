.class public interface abstract Lc8/Gpf;
.super Ljava/lang/Object;
.source "FileCache.java"


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract clearOldEntries(J)J
.end method

.method public abstract getDumpInfo()Lc8/bqf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResource(Lc8/Bpf;)Lc8/Hpf;
.end method

.method public abstract getSize()J
.end method

.method public abstract hasKey(Lc8/Bpf;)Z
.end method

.method public abstract insert(Lc8/Bpf;Lc8/Opf;)Lc8/Hpf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract probe(Lc8/Bpf;)Z
.end method

.method public abstract remove(Lc8/Bpf;)V
.end method
