.class public Lc8/Pkk;
.super Ljava/lang/Object;
.source "StillsCardInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Okk;
    }
.end annotation


# instance fields
.field private arg1:Ljava/lang/String;

.field private cost:Ljava/lang/String;

.field private retcode:Ljava/lang/String;

.field private retmsg:Ljava/lang/String;

.field private scm:Ljava/lang/String;

.field private spm:Ljava/lang/String;

.field private stillsCardData:Lc8/Okk;

.field private track_info:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lc8/Okk;

    invoke-direct {v0}, Lc8/Okk;-><init>()V

    iput-object v0, p0, Lc8/Pkk;->stillsCardData:Lc8/Okk;

    .line 87
    return-void
.end method


# virtual methods
.method public getArg1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lc8/Pkk;->arg1:Ljava/lang/String;

    return-object v0
.end method

.method public getCost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lc8/Pkk;->cost:Ljava/lang/String;

    return-object v0
.end method

.method public getRetcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lc8/Pkk;->retcode:Ljava/lang/String;

    return-object v0
.end method

.method public getRetmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lc8/Pkk;->retmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getScm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Pkk;->scm:Ljava/lang/String;

    return-object v0
.end method

.method public getSpm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lc8/Pkk;->spm:Ljava/lang/String;

    return-object v0
.end method

.method public getStillsCardData()Lc8/Okk;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lc8/Pkk;->stillsCardData:Lc8/Okk;

    return-object v0
.end method

.method public getTrack_info()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lc8/Pkk;->track_info:Ljava/lang/String;

    return-object v0
.end method

.method public setArg1(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lc8/Pkk;->arg1:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setCost(Ljava/lang/String;)V
    .locals 0
    .param p1, "cost"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lc8/Pkk;->cost:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setRetcode(Ljava/lang/String;)V
    .locals 0
    .param p1, "retcode"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lc8/Pkk;->retcode:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setRetmsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "retmsg"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lc8/Pkk;->retmsg:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setScm(Ljava/lang/String;)V
    .locals 0
    .param p1, "scm"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lc8/Pkk;->scm:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setSpm(Ljava/lang/String;)V
    .locals 0
    .param p1, "spm"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/Pkk;->spm:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setStillsCardData(Lc8/Okk;)V
    .locals 0
    .param p1, "stillsCardData"    # Lc8/Okk;

    .prologue
    .line 84
    iput-object p1, p0, Lc8/Pkk;->stillsCardData:Lc8/Okk;

    .line 85
    return-void
.end method

.method public setTrack_info(Ljava/lang/String;)V
    .locals 0
    .param p1, "track_info"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lc8/Pkk;->track_info:Ljava/lang/String;

    .line 51
    return-void
.end method
