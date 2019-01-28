.class public Lc8/ffb;
.super Ljava/lang/Object;
.source "ShapeGroup.java"

# interfaces
.implements Lc8/Ceb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/efb;
    }
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Ceb;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/Ceb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lc8/ffb;->name:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lc8/ffb;->items:Ljava/util/List;

    .line 65
    return-void
.end method

.method public static shapeItemWithJson(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Ceb;
    .locals 3
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 24
    const-string/jumbo v1, "ty"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "type":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown shape type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 26
    :sswitch_0
    const-string/jumbo v2, "gr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "st"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "gs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "fl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "gf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "tr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "sh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "el"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v2, "rc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v2, "tm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v2, "sr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v2, "mm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v2, "rp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_0

    .line 28
    :pswitch_0
    invoke-static {p0, p1}, Lc8/efb;->access$000(Lorg/json/JSONObject;Lc8/kcb;)Lc8/ffb;

    move-result-object v1

    goto/16 :goto_1

    .line 30
    :pswitch_1
    invoke-static {p0, p1}, Lc8/kfb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/lfb;

    move-result-object v1

    goto/16 :goto_1

    .line 32
    :pswitch_2
    invoke-static {p0, p1}, Lc8/Ieb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Jeb;

    move-result-object v1

    goto/16 :goto_1

    .line 34
    :pswitch_3
    invoke-static {p0, p1}, Lc8/cfb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/dfb;

    move-result-object v1

    goto/16 :goto_1

    .line 36
    :pswitch_4
    invoke-static {p0, p1}, Lc8/Feb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Geb;

    move-result-object v1

    goto/16 :goto_1

    .line 38
    :pswitch_5
    invoke-static {p0, p1}, Lc8/seb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/teb;

    move-result-object v1

    goto/16 :goto_1

    .line 40
    :pswitch_6
    invoke-static {p0, p1}, Lc8/hfb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/ifb;

    move-result-object v1

    goto/16 :goto_1

    .line 42
    :pswitch_7
    invoke-static {p0, p1}, Lc8/Aeb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Beb;

    move-result-object v1

    goto/16 :goto_1

    .line 44
    :pswitch_8
    invoke-static {p0, p1}, Lc8/Ueb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Veb;

    move-result-object v1

    goto/16 :goto_1

    .line 46
    :pswitch_9
    invoke-static {p0, p1}, Lc8/nfb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/ofb;

    move-result-object v1

    goto/16 :goto_1

    .line 48
    :pswitch_a
    invoke-static {p0, p1}, Lc8/Reb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Seb;

    move-result-object v1

    goto/16 :goto_1

    .line 50
    :pswitch_b
    invoke-static {p0}, Lc8/Oeb;->newInstance(Lorg/json/JSONObject;)Lc8/Peb;

    move-result-object v1

    goto/16 :goto_1

    .line 52
    :pswitch_c
    invoke-static {p0, p1}, Lc8/Web;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Xeb;

    move-result-object v1

    goto/16 :goto_1

    .line 26
    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_7
        0xcc6 -> :sswitch_3
        0xcdf -> :sswitch_4
        0xceb -> :sswitch_0
        0xcec -> :sswitch_2
        0xda0 -> :sswitch_b
        0xe31 -> :sswitch_8
        0xe3e -> :sswitch_c
        0xe55 -> :sswitch_6
        0xe5f -> :sswitch_a
        0xe61 -> :sswitch_1
        0xe79 -> :sswitch_9
        0xe7e -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Ceb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lc8/ffb;->items:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lc8/ffb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toContent(Lc8/tcb;Lc8/rfb;)Lc8/Icb;
    .locals 1
    .param p1, "drawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;

    .prologue
    .line 95
    new-instance v0, Lc8/Jcb;

    invoke-direct {v0, p1, p2, p0}, Lc8/Jcb;-><init>(Lc8/tcb;Lc8/rfb;Lc8/ffb;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ShapeGroup{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/ffb;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' Shapes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/ffb;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
