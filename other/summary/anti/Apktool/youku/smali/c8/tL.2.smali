.class public Lc8/tL;
.super Ljava/lang/Object;
.source "HttpDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Singleton"
.end annotation


# static fields
.field static instance:Lc8/uL;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lc8/uL;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/uL;-><init>(Lc8/rL;)V

    sput-object v0, Lc8/tL;->instance:Lc8/uL;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
