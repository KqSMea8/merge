.class public Lc8/fFb;
.super Ljava/lang/Object;


# static fields
.field public static final CLOSED:Ljava/lang/String; = "7"

.field public static final FAIL:Ljava/lang/String; = "6"

.field public static final NO_METHOD:Ljava/lang/String; = "1"

.field public static final NO_PERMISSION:Ljava/lang/String; = "4"

.field public static final PARAM_ERR:Ljava/lang/String; = "2"

.field public static final RET_CLOSED:Lc8/fFb;

.field public static final RET_FAIL:Lc8/fFb;

.field public static final RET_NO_METHOD:Lc8/fFb;

.field public static final RET_NO_PERMISSION:Lc8/fFb;

.field public static final RET_PARAM_ERR:Lc8/fFb;

.field public static final RET_SUCCESS:Lc8/fFb;

.field public static final SUCCESS:Ljava/lang/String; = "0"

.field public static final TIMEOUT:Ljava/lang/String; = "5"

.field public static final UNKNOWN_ERR:Ljava/lang/String; = "3"


# instance fields
.field private a:Lcom/alibaba/fastjson/JSONObject;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc8/fFb;

    const-string/jumbo v1, "0"

    invoke-direct {v0, v1}, Lc8/fFb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/fFb;->RET_SUCCESS:Lc8/fFb;

    new-instance v0, Lc8/fFb;

    const-string/jumbo v1, "6"

    invoke-direct {v0, v1}, Lc8/fFb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/fFb;->RET_FAIL:Lc8/fFb;

    new-instance v0, Lc8/fFb;

    const-string/jumbo v1, "2"

    invoke-direct {v0, v1}, Lc8/fFb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/fFb;->RET_PARAM_ERR:Lc8/fFb;

    new-instance v0, Lc8/fFb;

    const-string/jumbo v1, "1"

    invoke-direct {v0, v1}, Lc8/fFb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/fFb;->RET_NO_METHOD:Lc8/fFb;

    new-instance v0, Lc8/fFb;

    const-string/jumbo v1, "4"

    invoke-direct {v0, v1}, Lc8/fFb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/fFb;->RET_NO_PERMISSION:Lc8/fFb;

    new-instance v0, Lc8/fFb;

    const-string/jumbo v1, "7"

    invoke-direct {v0, v1}, Lc8/fFb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/fFb;->RET_CLOSED:Lc8/fFb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lc8/fFb;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v0, "6"

    iput-object v0, p0, Lc8/fFb;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/fFb;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lc8/fFb;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v0, "6"

    iput-object v0, p0, Lc8/fFb;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/fFb;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/fFb;->setResultMsg(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lc8/fFb;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getErrorMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    const-string/jumbo v0, "BC_UNKNOWN"

    :goto_1
    return-object v0

    :pswitch_0
    const-string/jumbo v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const-string/jumbo v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const-string/jumbo v1, "5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const-string/jumbo v1, "6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :pswitch_7
    const-string/jumbo v1, "7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "BC_SUCCESS"

    goto :goto_1

    :pswitch_9
    const-string/jumbo v0, "BC_NO_HANDLER"

    goto :goto_1

    :pswitch_a
    const-string/jumbo v0, "BC_PARAM_ERR"

    goto :goto_1

    :pswitch_b
    const-string/jumbo v0, "BC_UNKNOWN_ERR"

    goto :goto_1

    :pswitch_c
    const-string/jumbo v0, "BC_NO_PERMISSION"

    goto/16 :goto_1

    :pswitch_d
    const-string/jumbo v0, "BC_TIMEOUT"

    goto/16 :goto_1

    :pswitch_e
    const-string/jumbo v0, "BC_FAILED"

    goto/16 :goto_1

    :pswitch_f
    const-string/jumbo v0, "BC_CLOSED"

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lc8/fFb;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/fFb;->getErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/fFb;->c:Ljava/lang/String;

    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc8/fFb;->c:Ljava/lang/String;

    return-void
.end method

.method public setSuccess()V
    .locals 1

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/fFb;->b:Ljava/lang/String;

    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Lc8/fFb;->getErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/fFb;->c:Ljava/lang/String;

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 3

    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "code"

    iget-object v2, p0, Lc8/fFb;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "msg"

    iget-object v2, p0, Lc8/fFb;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "data"

    iget-object v2, p0, Lc8/fFb;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "alibc"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
