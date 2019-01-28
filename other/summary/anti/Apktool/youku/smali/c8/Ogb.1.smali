.class public Lc8/Ogb;
.super Ljava/lang/Object;
.source "AccountContract.java"


# instance fields
.field hash:Ljava/lang/String;

.field hash_key:Ljava/lang/String;

.field nick:Ljava/lang/String;

.field openid:Ljava/lang/String;

.field userid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "openid"    # Ljava/lang/String;
    .param p3, "userid"    # Ljava/lang/String;
    .param p4, "nick"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p3, p0, Lc8/Ogb;->userid:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lc8/Ogb;->openid:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lc8/Ogb;->nick:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lc8/Ogb;->hash:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lc8/Ogb;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getHash_key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lc8/Ogb;->hash_key:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lc8/Ogb;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lc8/Ogb;->openid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lc8/Ogb;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lc8/Ogb;->hash:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setHash_key(Ljava/lang/String;)V
    .locals 0
    .param p1, "hash_key"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lc8/Ogb;->hash_key:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0
    .param p1, "nick"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lc8/Ogb;->nick:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setOpenid(Ljava/lang/String;)V
    .locals 0
    .param p1, "openid"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lc8/Ogb;->openid:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lc8/Ogb;->userid:Ljava/lang/String;

    .line 30
    return-void
.end method
