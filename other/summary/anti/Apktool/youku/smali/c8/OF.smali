.class public Lc8/OF;
.super Ljava/lang/Object;
.source "WVMonitorConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/MF;,
        Lc8/NF;
    }
.end annotation


# instance fields
.field public errorRule:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/MF;",
            ">;"
        }
    .end annotation
.end field

.field public isErrorBlacklist:Z

.field public perfCheckSampleRate:D

.field public perfCheckURL:Ljava/lang/String;

.field public stat:Lc8/NF;

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/OF;->v:Ljava/lang/String;

    .line 19
    new-instance v0, Lc8/NF;

    invoke-direct {v0, p0}, Lc8/NF;-><init>(Lc8/OF;)V

    iput-object v0, p0, Lc8/OF;->stat:Lc8/NF;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/OF;->isErrorBlacklist:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/OF;->errorRule:Ljava/util/List;

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/OF;->perfCheckSampleRate:D

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OF;->perfCheckURL:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public newErrorRuleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/MF;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Lc8/MF;

    invoke-direct {v0, p0}, Lc8/MF;-><init>(Lc8/OF;)V

    .line 27
    .local v0, "res":Lc8/MF;
    iput-object p1, v0, Lc8/MF;->url:Ljava/lang/String;

    .line 28
    iput-object p2, v0, Lc8/MF;->msg:Ljava/lang/String;

    .line 29
    iput-object p3, v0, Lc8/MF;->code:Ljava/lang/String;

    .line 30
    return-object v0
.end method
