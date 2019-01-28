.class public Lc8/uPp;
.super Ljava/lang/Object;
.source "XcmdEventMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vPp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field static xm:Lc8/vPp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lc8/vPp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/vPp;-><init>(Lc8/tPp;)V

    sput-object v0, Lc8/uPp;->xm:Lc8/vPp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
