.class public Lc8/ZHg;
.super Ljava/lang/Object;
.source "UtVVTrackInterfaceImp.java"

# interfaces
.implements Lc8/MHg;


# instance fields
.field public lastControlArgsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lastScgid:Ljava/lang/String;

.field public lastScm:Ljava/lang/String;

.field public lastSpm_urlForVV:Ljava/lang/String;

.field public lastTrack_info_urlForVV:Ljava/lang/String;

.field public lastUtParamUrl:Ljava/lang/String;

.field public scgid:Ljava/lang/String;

.field public scm:Ljava/lang/String;

.field public spm_urlForVV:Ljava/lang/String;

.field public track_info_urlForVV:Ljava/lang/String;

.field public utParamUrl:Ljava/lang/String;

.field public vvlink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ZHg;->spm_urlForVV:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ZHg;->lastSpm_urlForVV:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ZHg;->track_info_urlForVV:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ZHg;->lastTrack_info_urlForVV:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ZHg;->vvlink:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ZHg;->scgid:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ZHg;->lastScgid:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ZHg;->scm:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ZHg;->lastScm:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ZHg;->utParamUrl:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ZHg;->lastUtParamUrl:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/ZHg;->lastControlArgsMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getScgid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lc8/ZHg;->scgid:Ljava/lang/String;

    return-object v0
.end method

.method public getScm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lc8/ZHg;->scm:Ljava/lang/String;

    return-object v0
.end method

.method public getSpm_urlForVV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lc8/ZHg;->spm_urlForVV:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack_info_urlForVV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lc8/ZHg;->track_info_urlForVV:Ljava/lang/String;

    return-object v0
.end method

.method public getUtParamUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lc8/ZHg;->utParamUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVvlink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lc8/ZHg;->vvlink:Ljava/lang/String;

    return-object v0
.end method

.method public setLastControlArgsMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "lastControlArgsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lc8/ZHg;->lastControlArgsMap:Ljava/util/HashMap;

    .line 89
    return-void
.end method

.method public setScgid(Ljava/lang/String;)V
    .locals 0
    .param p1, "scgid"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lc8/ZHg;->scgid:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setScm(Ljava/lang/String;)V
    .locals 0
    .param p1, "scm"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lc8/ZHg;->scm:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setSpm_urlForVV(Ljava/lang/String;)V
    .locals 0
    .param p1, "spm_urlForVV"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lc8/ZHg;->spm_urlForVV:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setTrack_info_urlForVV(Ljava/lang/String;)V
    .locals 0
    .param p1, "track_info_urlForVV"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lc8/ZHg;->track_info_urlForVV:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setUtParamUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "utParamUrl"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lc8/ZHg;->utParamUrl:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setVvlink(Ljava/lang/String;)V
    .locals 0
    .param p1, "vvlink"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lc8/ZHg;->vvlink:Ljava/lang/String;

    .line 54
    return-void
.end method
