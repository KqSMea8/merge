.class public Lc8/vzb;
.super Ljava/lang/Object;
.source "DebugPluginSwitch.java"

# interfaces
.implements Lc8/xzb;


# static fields
.field public static final KEY:Ljava/lang/String; = "sw_plugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 13
    const-string/jumbo v2, "sw_plugin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    const/4 v1, 0x0

    .line 16
    .local v1, "lIsDebugPluginOn":Z
    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 20
    :goto_0
    if-eqz v1, :cond_0

    .line 21
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/uzb;->turnOffDebugPlugin()V

    .line 24
    .end local v1    # "lIsDebugPluginOn":Z
    :cond_0
    return-void

    .line 17
    .restart local v1    # "lIsDebugPluginOn":Z
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
