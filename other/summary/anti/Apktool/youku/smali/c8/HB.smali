.class public Lc8/HB;
.super Ljava/lang/Object;
.source "WVConfigManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KB;->updateConfig(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KB;

.field final synthetic val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;


# direct methods
.method constructor <init>(Lc8/KB;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lc8/HB;->this$0:Lc8/KB;

    iput-object p2, p0, Lc8/HB;->val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lc8/HB;->this$0:Lc8/KB;

    iget-object v1, p0, Lc8/HB;->val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-static {v0, v1}, Lc8/KB;->access$300(Lc8/KB;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    .line 216
    return-void
.end method
