.class public Lc8/Qyo;
.super Ljava/lang/Object;
.source "LaiFengManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ryo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HolderClass"
.end annotation


# static fields
.field private static final instance:Lc8/Ryo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lc8/Ryo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/Ryo;-><init>(Lc8/Pyo;)V

    sput-object v0, Lc8/Qyo;->instance:Lc8/Ryo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lc8/Ryo;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lc8/Qyo;->instance:Lc8/Ryo;

    return-object v0
.end method
