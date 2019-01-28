.class public Lc8/vN;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassHolder"
.end annotation


# static fields
.field static instance:Lc8/yN;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lc8/yN;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/yN;-><init>(Lc8/uN;)V

    sput-object v0, Lc8/vN;->instance:Lc8/yN;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
