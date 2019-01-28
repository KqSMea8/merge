.class public Lc8/nyf;
.super Ljava/lang/Object;
.source "ConsumeType.java"


# static fields
.field public static final ALL:I = 0x1d

.field public static final CANCELLATION:I = 0x8

.field public static final FAILURE:I = 0x10

.field public static final LAST_RESULT:I = 0x2

.field public static final NEW_RESULT:I = 0x1

.field public static final PROGRESS_UPDATE:I = 0x4

.field public static final SKIP:I


# instance fields
.field private final mConsumeType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "consumeType"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lc8/nyf;->mConsumeType:I

    .line 21
    return-void
.end method


# virtual methods
.method public activeOn(I)Z
    .locals 1
    .param p1, "targetType"    # I

    .prologue
    .line 24
    iget v0, p0, Lc8/nyf;->mConsumeType:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
