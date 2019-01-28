.class public Lc8/Dzb;
.super Lc8/Xzb;
.source "UTDBConfigEntity.java"


# annotations
.annotation runtime Lc8/fAb;
    value = "onlineconfig"
.end annotation


# instance fields
.field private mConfTimestamp:J
    .annotation runtime Lc8/dAb;
        value = "timestamp"
    .end annotation
.end field

.field private mContent:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "content"
    .end annotation
.end field

.field private mGroupname:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "groupname"
    .end annotation
.end field

.field private mIs304:Z
    .annotation runtime Lc8/eAb;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Lc8/Xzb;-><init>()V

    .line 14
    iput-object v0, p0, Lc8/Dzb;->mGroupname:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lc8/Dzb;->mContent:Ljava/lang/String;

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/Dzb;->mConfTimestamp:J

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Dzb;->mIs304:Z

    return-void
.end method


# virtual methods
.method public getConfContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lc8/Dzb;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getConfTimestamp()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lc8/Dzb;->mConfTimestamp:J

    return-wide v0
.end method

.method public getGroupname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lc8/Dzb;->mGroupname:Ljava/lang/String;

    return-object v0
.end method

.method public is304()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lc8/Dzb;->mIs304:Z

    return v0
.end method

.method public set304Flag()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Dzb;->mIs304:Z

    .line 52
    return-void
.end method

.method public setConfContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "aContent"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lc8/Dzb;->mContent:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setConfTimestamp(J)V
    .locals 1
    .param p1, "aCongTimestamp"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lc8/Dzb;->mConfTimestamp:J

    .line 48
    return-void
.end method

.method public setGroupname(Ljava/lang/String;)V
    .locals 0
    .param p1, "aGroupname"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lc8/Dzb;->mGroupname:Ljava/lang/String;

    .line 36
    return-void
.end method
