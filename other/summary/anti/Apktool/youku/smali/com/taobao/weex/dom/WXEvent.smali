.class public Lcom/taobao/weex/dom/WXEvent;
.super Ljava/util/ArrayList;
.source "WXEvent.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final EVENT_KEY_ARGS:Ljava/lang/String; = "params"

.field public static final EVENT_KEY_TYPE:Ljava/lang/String; = "type"

.field private static final serialVersionUID:J = -0x719c99876555422bL


# instance fields
.field private mEventBindingArgs:Landroid/support/v4/util/ArrayMap;

.field private mEventBindingArgsValues:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static getEventName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "event"    # Ljava/lang/Object;

    .prologue
    .line 105
    instance-of v2, p0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 107
    :cond_0
    instance-of v2, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_1

    move-object v0, p0

    .line 108
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 109
    .local v0, "bindings":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "eventName":Ljava/lang/String;
    goto :goto_0

    .line 112
    .end local v0    # "bindings":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "eventName":Ljava/lang/String;
    :cond_1
    if-nez p0, :cond_2

    .line 113
    const/4 v1, 0x0

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public addEvent(Ljava/lang/Object;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    .line 89
    instance-of v3, p1, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "eventName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    invoke-virtual {p0, v2}, Lcom/taobao/weex/dom/WXEvent;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v2    # "eventName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    instance-of v3, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 95
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 96
    .local v1, "bindings":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .restart local v2    # "eventName":Ljava/lang/String;
    const-string/jumbo v3, "params"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    .local v0, "args":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p0, v2, v0}, Lcom/taobao/weex/dom/WXEvent;->putEventBindingArgs(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 61
    :cond_1
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 62
    return-void
.end method

.method public clone()Lcom/taobao/weex/dom/WXEvent;
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/WXEvent;

    .line 48
    .local v0, "event":Lcom/taobao/weex/dom/WXEvent;
    iget-object v1, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Landroid/support/v4/util/ArrayMap;

    iput-object v1, v0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Landroid/support/v4/util/ArrayMap;

    .line 49
    iget-object v1, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Landroid/support/v4/util/ArrayMap;

    iput-object v1, v0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Landroid/support/v4/util/ArrayMap;

    .line 50
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXEvent;->clone()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    return-object v0
.end method

.method public getEventBindingArgs()Landroid/support/v4/util/ArrayMap;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Landroid/support/v4/util/ArrayMap;

    return-object v0
.end method

.method public getEventBindingArgsValues()Landroid/support/v4/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Landroid/support/v4/util/ArrayMap;

    return-object v0
.end method

.method public putEventBindingArgs(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/taobao/weex/dom/WXEvent;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    if-eqz p2, :cond_2

    .line 123
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Landroid/support/v4/util/ArrayMap;

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Landroid/support/v4/util/ArrayMap;

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Landroid/support/v4/util/ArrayMap;

    invoke-static {p2}, Lc8/wZf;->bindingBlock(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_2
    return-void
.end method

.method public putEventBindingArgsValue(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Landroid/support/v4/util/ArrayMap;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Landroid/support/v4/util/ArrayMap;

    .line 134
    :cond_0
    if-nez p2, :cond_1

    .line 135
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
