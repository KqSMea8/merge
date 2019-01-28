.class public Lc8/Hkk;
.super Ljava/lang/Object;
.source "SideslipContent.java"


# instance fields
.field public firstEpisodeVid:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public markBgImg:Ljava/lang/String;

.field public markStyle:Ljava/lang/String;

.field public markText:Ljava/lang/String;

.field public markType:Ljava/lang/String;

.field public scm:Ljava/lang/String;

.field public spm:Ljava/lang/String;

.field public subtitle:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public traceInfo:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Hkk;->markType:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Hkk;->markStyle:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Hkk;->markText:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Hkk;->markBgImg:Ljava/lang/String;

    return-void
.end method
