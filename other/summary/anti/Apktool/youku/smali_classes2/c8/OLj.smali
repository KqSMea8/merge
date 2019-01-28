.class public Lc8/OLj;
.super Ljava/lang/Object;
.source "YoukuActivityLifecycleCallbacksTmp.java"


# static fields
.field public static activityName:Ljava/lang/String;

.field static enterForeground:Z

.field static goBackground:Z

.field static sEnterBackgroundTime:J

.field static startedActivityCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, ""

    sput-object v0, Lc8/OLj;->activityName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStartedActivityCount()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lc8/OLj;->startedActivityCount:I

    return v0
.end method
