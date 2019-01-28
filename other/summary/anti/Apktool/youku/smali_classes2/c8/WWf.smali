.class public Lc8/WWf;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZWf;->registerModules(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZWf;

.field final synthetic val$modules:Ljava/util/Map;


# direct methods
.method constructor <init>(Lc8/ZWf;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1758
    iput-object p1, p0, Lc8/WWf;->this$0:Lc8/ZWf;

    iput-object p2, p0, Lc8/WWf;->val$modules:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1761
    iget-object v0, p0, Lc8/WWf;->this$0:Lc8/ZWf;

    iget-object v1, p0, Lc8/WWf;->val$modules:Ljava/util/Map;

    iget-object v2, p0, Lc8/WWf;->this$0:Lc8/ZWf;

    invoke-static {v2}, Lc8/ZWf;->access$600(Lc8/ZWf;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/ZWf;->access$700(Lc8/ZWf;Ljava/util/Map;Ljava/util/List;)V

    .line 1762
    return-void
.end method
