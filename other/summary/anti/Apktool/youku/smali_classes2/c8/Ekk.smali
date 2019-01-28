.class public Lc8/Ekk;
.super Ljava/lang/Object;
.source "SeriesVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/data/SeriesVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownFlag"
.end annotation


# instance fields
.field public limit:I

.field public vid:Ljava/lang/String;

.field public vip_down_flag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Ekk;->vid:Ljava/lang/String;

    .line 211
    iput v1, p0, Lc8/Ekk;->limit:I

    .line 212
    iput v1, p0, Lc8/Ekk;->vip_down_flag:I

    .line 213
    return-void
.end method
