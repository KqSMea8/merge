.class public Lc8/vNf;
.super Ljava/lang/Object;
.source "ImageStrategyExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/wNf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageUrlInfo"
.end annotation


# instance fields
.field public base:Ljava/lang/String;

.field public cj:Ljava/lang/String;

.field public existCi:Z

.field public existCo:Z

.field public ext:Ljava/lang/String;

.field public height:I

.field public quality:Ljava/lang/String;

.field public sharpen:Ljava/lang/String;

.field public suffix:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/vNf;->cj:Ljava/lang/String;

    return-void
.end method
