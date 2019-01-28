.class public final Lc8/FYf;
.super Lc8/MXf;
.source "WXDomModule.java"


# static fields
.field public static final ADD_ELEMENT:Ljava/lang/String; = "addElement"

.field public static final ADD_EVENT:Ljava/lang/String; = "addEvent"

.field public static final ADD_RULE:Ljava/lang/String; = "addRule"

.field public static final CREATE_BODY:Ljava/lang/String; = "createBody"

.field public static final CREATE_FINISH:Ljava/lang/String; = "createFinish"

.field public static final GET_COMPONENT_RECT:Ljava/lang/String; = "getComponentRect"

.field public static final INVOKE_METHOD:Ljava/lang/String; = "invokeMethod"

.field public static final METHODS:[Ljava/lang/String;

.field public static final MOVE_ELEMENT:Ljava/lang/String; = "moveElement"

.field public static final REFRESH_FINISH:Ljava/lang/String; = "refreshFinish"

.field public static final REMOVE_ELEMENT:Ljava/lang/String; = "removeElement"

.field public static final REMOVE_EVENT:Ljava/lang/String; = "removeEvent"

.field public static final SCROLL_TO_ELEMENT:Ljava/lang/String; = "scrollToElement"

.field public static final UPDATE_ATTRS:Ljava/lang/String; = "updateAttrs"

.field public static final UPDATE_FINISH:Ljava/lang/String; = "updateFinish"

.field public static final UPDATE_STYLE:Ljava/lang/String; = "updateStyle"

.field public static final WXDOM:Ljava/lang/String; = "dom"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "createBody"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "updateAttrs"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "updateStyle"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "removeElement"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "addElement"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "moveElement"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "addEvent"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "removeEvent"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "createFinish"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "refreshFinish"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "updateFinish"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "scrollToElement"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "addRule"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "getComponentRect"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "invokeMethod"

    aput-object v2, v0, v1

    sput-object v0, Lc8/FYf;->METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lc8/nVf;)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;

    .prologue
    .line 78
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    .line 79
    iput-object p1, p0, Lc8/FYf;->mWXSDKInstance:Lc8/nVf;

    .line 80
    return-void
.end method


# virtual methods
.method public varargs callDomMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;[J)Ljava/lang/Object;
    .locals 14
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/alibaba/fastjson/JSONArray;
    .param p3, "parseNanos"    # [J

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    const/4 v2, 0x0

    .line 142
    :goto_0
    return-object v2

    .line 98
    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p2}, Lc8/YYf;->get(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lc8/XYf;

    move-result-object v8

    .line 99
    .local v8, "action":Lc8/XYf;
    if-nez v8, :cond_1

    .line 100
    const-string/jumbo v2, "Unknown dom action."

    invoke-static {v2}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 102
    :cond_1
    instance-of v2, v8, Lc8/fYf;

    if-eqz v2, :cond_8

    .line 103
    move-object v0, v8

    check-cast v0, Lc8/fYf;

    move-object v2, v0

    const-string/jumbo v3, "createBody"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "addRule"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v2, v3}, Lc8/FYf;->postAction(Lc8/fYf;Z)V

    .line 108
    :goto_2
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    instance-of v2, v8, Lc8/sZf;

    if-eqz v2, :cond_6

    .line 110
    const/4 v5, 0x0

    .line 111
    .local v5, "ref":Ljava/lang/String;
    const/4 v6, 0x0

    .line 112
    .local v6, "type":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 113
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 114
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 115
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 122
    :cond_3
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    .line 123
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_4

    .line 124
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v3, "ref"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 125
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 129
    :cond_4
    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 130
    move-object v0, v8

    check-cast v0, Lc8/sZf;

    move-object v2, v0

    const/4 v3, 0x0

    aget-wide v10, p3, v3

    iput-wide v10, v2, Lc8/sZf;->mParseJsonNanos:J

    .line 131
    move-object v0, v8

    check-cast v0, Lc8/sZf;

    move-object v2, v0

    iget-wide v10, v2, Lc8/sZf;->mStartMillis:J

    long-to-double v10, v10

    const/4 v3, 0x0

    aget-wide v12, p3, v3

    invoke-static {v12, v13}, Lc8/jag;->nanosToMillis(J)D

    move-result-wide v12

    sub-double/2addr v10, v12

    double-to-long v10, v10

    iput-wide v10, v2, Lc8/sZf;->mStartMillis:J

    .line 133
    :cond_5
    move-object v0, v8

    check-cast v0, Lc8/sZf;

    move-object v2, v0

    iget-object v3, p0, Lc8/FYf;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v3}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v7

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lc8/sZf;->onStartDomExecute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v5    # "ref":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v8    # "action":Lc8/XYf;
    :cond_6
    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 103
    .restart local v8    # "action":Lc8/XYf;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 105
    :cond_8
    move-object v0, v8

    check-cast v0, Lc8/rYf;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lc8/FYf;->postAction(Lc8/rYf;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 135
    .end local v8    # "action":Lc8/XYf;
    :catch_0
    move-exception v9

    .line 137
    .local v9, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v9}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 138
    const-string/jumbo v2, "Dom module call miss arguments."

    invoke-static {v2}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_4

    .line 116
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v5    # "ref":Ljava/lang/String;
    .restart local v6    # "type":Ljava/lang/String;
    .restart local v8    # "action":Lc8/XYf;
    :cond_9
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_3

    .line 117
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v3, "ref"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 118
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto/16 :goto_3

    .line 140
    .end local v5    # "ref":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v8    # "action":Lc8/XYf;
    :catch_1
    move-exception v2

    const-string/jumbo v2, "Dom module call arguments format error!!"

    invoke-static {v2}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public varargs callDomMethod(Lcom/alibaba/fastjson/JSONObject;[J)V
    .locals 3
    .param p1, "task"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "parseNanos"    # [J

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string/jumbo v2, "method"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, "method":Ljava/lang/String;
    const-string/jumbo v2, "args"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 88
    .local v0, "args":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p0, v1, v0, p2}, Lc8/FYf;->callDomMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;[J)Ljava/lang/Object;

    goto :goto_0
.end method

.method public invokeMethod(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 2
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "args"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    .line 152
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-static {p1, p2, p3}, Lc8/YYf;->getInvokeMethod(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lc8/fYf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/FYf;->postAction(Lc8/fYf;Z)V

    goto :goto_0
.end method

.method public postAction(Lc8/fYf;Z)V
    .locals 2
    .param p1, "action"    # Lc8/fYf;
    .param p2, "createContext"    # Z

    .prologue
    .line 168
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getWXDomManager()Lc8/EYf;

    move-result-object v0

    iget-object v1, p0, Lc8/FYf;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lc8/EYf;->postAction(Ljava/lang/String;Lc8/fYf;Z)V

    .line 169
    return-void
.end method

.method public postAction(Lc8/rYf;)V
    .locals 2
    .param p1, "action"    # Lc8/rYf;

    .prologue
    .line 160
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getWXRenderManager()Lc8/Cag;

    move-result-object v0

    iget-object v1, p0, Lc8/FYf;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lc8/Cag;->runOnThread(Ljava/lang/String;Lc8/rYf;)V

    .line 161
    return-void
.end method
