.class public Lc8/wZf;
.super Ljava/lang/Object;
.source "ELUtils.java"


# static fields
.field public static final BINDING:Ljava/lang/String; = "@binding"

.field public static final COMPONENT_PROPS:Ljava/lang/String; = "@componentProps"

.field public static final EXCLUDES_BINDING:[Ljava/lang/String;

.field public static final IS_COMPONENT_ROOT:Ljava/lang/String; = "@isComponentRoot"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "clickEventParams"

    aput-object v2, v0, v1

    sput-object v0, Lc8/wZf;->EXCLUDES_BINDING:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindingBlock(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 70
    instance-of v8, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v8, :cond_2

    move-object v5, p0

    .line 71
    check-cast v5, Lcom/alibaba/fastjson/JSONObject;

    .line 72
    .local v5, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "@binding"

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 73
    const-string/jumbo v8, "@binding"

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 74
    .local v1, "binding":Ljava/lang/Object;
    instance-of v8, v1, Lc8/XZf;

    if-nez v8, :cond_0

    .line 75
    const-string/jumbo v8, "@binding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lc8/VZf;->parse(Ljava/lang/String;)Lc8/XZf;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .end local v1    # "binding":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 79
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 80
    .local v6, "propsKey":Ljava/lang/Object;
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v8, :cond_1

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v9, "@binding"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 82
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/JSONObject;

    .line 83
    .local v7, "propsValue":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "@binding"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 84
    .restart local v1    # "binding":Ljava/lang/Object;
    instance-of v8, v1, Lc8/XZf;

    if-nez v8, :cond_1

    .line 85
    const-string/jumbo v8, "@binding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lc8/VZf;->parse(Ljava/lang/String;)Lc8/XZf;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    .end local v1    # "binding":Ljava/lang/Object;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "propsKey":Ljava/lang/Object;
    .end local v7    # "propsValue":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    instance-of v8, p0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v8, :cond_3

    move-object v0, p0

    .line 90
    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 91
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 92
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lc8/wZf;->bindingBlock(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 95
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "i":I
    :cond_3
    return-object p0
.end method

.method public static isBinding(Ljava/lang/Object;)Z
    .locals 5
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 50
    instance-of v4, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v4, :cond_1

    move-object v2, p0

    .line 51
    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    .line 52
    .local v2, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "@binding"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    .end local v2    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_0
    return v3

    .line 55
    :cond_1
    instance-of v4, p0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v4, :cond_2

    move-object v0, p0

    .line 56
    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 57
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 58
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lc8/wZf;->isBinding(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 63
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v1    # "i":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static vforBlock(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "vfor"    # Ljava/lang/Object;

    .prologue
    .line 99
    instance-of v1, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_1

    move-object v1, p0

    .line 100
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "@expression"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 101
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "@expression"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "list":Ljava/lang/Object;
    instance-of v1, v0, Lc8/XZf;

    if-nez v1, :cond_0

    move-object v1, p0

    .line 103
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "@expression"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/VZf;->parse(Ljava/lang/String;)Lc8/XZf;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .end local v0    # "list":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 107
    :cond_1
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const-string/jumbo v1, "weex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "weex vfor is illegal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
