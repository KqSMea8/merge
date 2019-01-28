.class public final Lc8/Gcb;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Hcb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PathGroup"
.end annotation


# instance fields
.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Tcb;",
            ">;"
        }
    .end annotation
.end field

.field private final trimPath:Lc8/adb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lc8/adb;)V
    .locals 1
    .param p1, "trimPath"    # Lc8/adb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Gcb;->paths:Ljava/util/List;

    .line 287
    iput-object p1, p0, Lc8/Gcb;->trimPath:Lc8/adb;

    .line 288
    return-void
.end method

.method synthetic constructor <init>(Lc8/adb;Lc8/Fcb;)V
    .locals 0
    .param p1, "x0"    # Lc8/adb;
    .param p2, "x1"    # Lc8/Fcb;

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lc8/Gcb;-><init>(Lc8/adb;)V

    return-void
.end method

.method static synthetic access$100(Lc8/Gcb;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/Gcb;

    .prologue
    .line 282
    iget-object v0, p0, Lc8/Gcb;->paths:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Gcb;)Lc8/adb;
    .locals 1
    .param p0, "x0"    # Lc8/Gcb;

    .prologue
    .line 282
    iget-object v0, p0, Lc8/Gcb;->trimPath:Lc8/adb;

    return-object v0
.end method
