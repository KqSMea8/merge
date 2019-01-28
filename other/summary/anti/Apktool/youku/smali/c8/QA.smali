.class public Lc8/QA;
.super Ljava/lang/Object;
.source "AtlasCrashManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/PA;
    }
.end annotation


# static fields
.field private static defaultUnCaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lc8/QA;->defaultUnCaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static forceStopAppWhenCrashed()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lc8/QA;->defaultUnCaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 19
    new-instance v0, Lc8/PA;

    invoke-direct {v0}, Lc8/PA;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 20
    return-void
.end method
