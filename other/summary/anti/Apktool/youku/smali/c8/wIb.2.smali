.class public Lc8/wIb;
.super Ljava/lang/Object;
.source "AlibcPromotionSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yIb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlibcDefaultPromotionSDKHolder"
.end annotation


# static fields
.field public static instance:Lc8/yIb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lc8/yIb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/yIb;-><init>(Lc8/vIb;)V

    sput-object v0, Lc8/wIb;->instance:Lc8/yIb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
