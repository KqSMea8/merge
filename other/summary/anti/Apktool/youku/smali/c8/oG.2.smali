.class public Lc8/oG;
.super Lc8/FB;
.source "WVPackageAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sG;->init(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sG;


# direct methods
.method constructor <init>(Lc8/sG;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lc8/oG;->this$0:Lc8/sG;

    invoke-direct {p0}, Lc8/FB;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/String;Lc8/LB;)V
    .locals 2
    .param p1, "defaultUrl"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/LB;

    .prologue
    .line 110
    invoke-static {}, Lc8/fG;->getInstance()Lc8/fG;

    move-result-object v0

    invoke-virtual {p0}, Lc8/oG;->getSnapshotN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lc8/fG;->updateCustomConfig(Lc8/LB;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method
