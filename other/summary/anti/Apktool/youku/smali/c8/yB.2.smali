.class public Lc8/yB;
.super Ljava/lang/Object;
.source "ModuleConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/AB;->saveConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/AB;

.field final synthetic val$jso:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lc8/AB;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lc8/yB;->this$0:Lc8/AB;

    iput-object p2, p0, Lc8/yB;->val$jso:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    const-string/jumbo v0, "ModuleConfig"

    const-string/jumbo v1, "wv-data"

    iget-object v2, p0, Lc8/yB;->val$jso:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/MH;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method
