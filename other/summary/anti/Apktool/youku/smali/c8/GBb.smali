.class public Lc8/GBb;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/HBb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpResponse"
.end annotation


# instance fields
.field public data:[B

.field public httpResponseCode:I

.field public rt:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const/4 v0, -0x1

    iput v0, p0, Lc8/GBb;->httpResponseCode:I

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/GBb;->data:[B

    .line 238
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/GBb;->rt:J

    return-void
.end method
