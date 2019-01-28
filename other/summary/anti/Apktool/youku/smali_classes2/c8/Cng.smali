.class public abstract Lc8/Cng;
.super Ljava/lang/Object;
.source "AbsAntUpdate.java"


# static fields
.field public static final SOURCE_FOREGROUND:Ljava/lang/String; = "foreground"

.field public static final SOURCE_HYBRID:Ljava/lang/String; = "hybrid"

.field public static final SOURCE_ORANGE:Ljava/lang/String; = "orange"


# instance fields
.field protected mAntNotifier:Lc8/Xng;

.field protected mAntStore:Lc8/Ong;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/Ong;Lc8/Xng;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "antStore"    # Lc8/Ong;
    .param p3, "antNotifier"    # Lc8/Xng;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lc8/Cng;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lc8/Cng;->mAntStore:Lc8/Ong;

    .line 24
    iput-object p3, p0, Lc8/Cng;->mAntNotifier:Lc8/Xng;

    .line 25
    return-void
.end method


# virtual methods
.method public abstract updateAntData(Ljava/lang/String;)V
.end method
