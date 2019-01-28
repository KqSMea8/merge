.class public Lc8/Kng;
.super Ljava/lang/Object;
.source "Scheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Lng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lc8/Lng;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lc8/Lng;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/Lng;-><init>(Lc8/Jng;)V

    sput-object v0, Lc8/Kng;->INSTANCE:Lc8/Lng;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lc8/Lng;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lc8/Kng;->INSTANCE:Lc8/Lng;

    return-object v0
.end method
