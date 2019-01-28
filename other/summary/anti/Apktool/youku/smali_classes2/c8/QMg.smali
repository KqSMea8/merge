.class public Lc8/QMg;
.super Ljava/lang/Object;
.source "YKTrackerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/RMg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lc8/RMg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lc8/RMg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/RMg;-><init>(Lc8/MMg;)V

    sput-object v0, Lc8/QMg;->INSTANCE:Lc8/RMg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lc8/RMg;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lc8/QMg;->INSTANCE:Lc8/RMg;

    return-object v0
.end method
