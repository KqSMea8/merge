.class public Lc8/XIf;
.super Ljava/lang/Object;
.source "MonitorTimerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/YIf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static instance:Lc8/YIf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lc8/YIf;

    invoke-direct {v0}, Lc8/YIf;-><init>()V

    sput-object v0, Lc8/XIf;->instance:Lc8/YIf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lc8/YIf;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lc8/XIf;->instance:Lc8/YIf;

    return-object v0
.end method
