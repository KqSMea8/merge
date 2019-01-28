.class public Lc8/mJf;
.super Lc8/eJf;
.source "ShutdownMonitorTask.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "req"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0}, Lc8/eJf;-><init>()V

    .line 7
    iput-object p1, p0, Lc8/mJf;->taskFlag:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method
