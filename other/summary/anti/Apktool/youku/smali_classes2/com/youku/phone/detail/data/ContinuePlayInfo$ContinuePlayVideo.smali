.class public Lcom/youku/phone/detail/data/ContinuePlayInfo$ContinuePlayVideo;
.super Lcom/youku/phone/detail/data/BaseSeriesVideo;
.source "ContinuePlayInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/data/ContinuePlayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContinuePlayVideo"
.end annotation


# instance fields
.field public arg1:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public is_vv:Ljava/lang/String;

.field public scm:Ljava/lang/String;

.field public spm:Ljava/lang/String;

.field public subtitle:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public trackInfo:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/youku/phone/detail/data/BaseSeriesVideo;-><init>()V

    return-void
.end method
