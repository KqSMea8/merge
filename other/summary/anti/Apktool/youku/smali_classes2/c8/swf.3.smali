.class public Lc8/swf;
.super Ljava/lang/Object;
.source "SimpleCacheKey.java"

# interfaces
.implements Lc8/Bpf;


# instance fields
.field private final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "catalog"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/swf;->mKey:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 34
    if-ne p1, p0, :cond_0

    .line 35
    const/4 v1, 0x1

    .line 41
    :goto_0
    return v1

    .line 37
    :cond_0
    instance-of v1, p1, Lc8/swf;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 38
    check-cast v0, Lc8/swf;

    .line 39
    .local v0, "otherKey":Lc8/swf;
    iget-object v1, p0, Lc8/swf;->mKey:Ljava/lang/String;

    iget-object v2, v0, Lc8/swf;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 41
    .end local v0    # "otherKey":Lc8/swf;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lc8/swf;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lc8/swf;->mKey:Ljava/lang/String;

    return-object v0
.end method
