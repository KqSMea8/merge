.class public Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/FWb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginData"
.end annotation


# instance fields
.field private mainClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMainClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;->mainClass:Ljava/lang/String;

    return-object v0
.end method

.method public setMainClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "mainClass"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;->mainClass:Ljava/lang/String;

    .line 37
    return-void
.end method
