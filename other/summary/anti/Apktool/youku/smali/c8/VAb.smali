.class public Lc8/VAb;
.super Ljava/lang/Object;
.source "BizResponse.java"


# static fields
.field static final DENY_SERVICE:I = 0x6b

.field static final NGX_ADASH_DENY_SERVICE:I = 0x74

.field static final NGX_ADASH_DISABLE_RTLOG:I = 0x73

.field static final NGX_ADASH_DOWNGRADE_V1:I = 0x6d

.field static final NO_ERROR:I = 0x0

.field static final UNKNOWN_ERROR:I = -0x1


# instance fields
.field data:Ljava/lang/String;

.field errCode:I

.field rt:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lc8/VAb;->errCode:I

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/VAb;->rt:J

    return-void
.end method


# virtual methods
.method isSuccess()Z
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lc8/VAb;->errCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
