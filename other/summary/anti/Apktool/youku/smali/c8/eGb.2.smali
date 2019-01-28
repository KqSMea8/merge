.class public Lc8/eGb;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/Map;

.field private static c:Ljava/util/Map;

.field private static d:Ljava/util/Map;

.field private static e:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lc8/eGb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/eGb;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/eGb;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/eGb;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/eGb;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lc8/eGb;->e:Ljava/util/Set;

    const-string/jumbo v1, "\u52a0\u8f7d\u5931\u8d25"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lc8/eGb;->e:Ljava/util/Set;

    const-string/jumbo v1, "\u7f51\u7edc\u9519\u8bef"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lc8/eGb;->e:Ljava/util/Set;

    const-string/jumbo v1, "\u8bf7\u6c42\u5931\u8d25"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "{Init:\"10\",_Page_Native:\"11\",_Page_H5:\"12\",Fetch_Config:\"13\",Login:\"14\",InvokeMtop:\"15\",Pay_Result_Alipay:\"16\",Taoke_Trace_Async:\"17\",Taoke_Trace_Sync:\"17\"}"

    invoke-static {v0}, Lc8/eGb;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lc8/eGb;->b:Ljava/util/Map;

    const-string/jumbo v0, "{Taoke_Trace_Async:\"01\",Init:\"01\",Detail_Page:\"01\",Fetch_Config:\"01\",Login:\"01\",Pay_Result_Alipay:\"01\",InvokeMtop:\"01\",Shop_Page:\"02\",Taoke_Trace_Sync:\"02\",Order_Page:\"03\",Cart_Page:\"04\",MyCarts_Page:\"05\",Other_Page:\"07\"}"

    invoke-static {v0}, Lc8/eGb;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lc8/eGb;->c:Ljava/util/Map;

    const-string/jumbo v0, "{\u65e0\u5b89\u5168\u56fe\u7247:\"01\",\u5b89\u5168\u56fe\u7247\u4e0d\u5408\u6cd5:\"02\",\u53c2\u6570\u4e0d\u5408\u6cd5:\"01\",applink\u4e0d\u5b58\u5728:\"02\",applink\u8c03\u7528\u5931\u8d25:\"03\",\u52a0\u8f7d\u5931\u8d25:\"\u7f51\u7edc\u9519\u8bef\u7801\",\u6821\u9a8c\u9519\u8bef:\"01\",\u89e3\u6790\u9519\u8bef:\"02\",\u7f51\u7edc\u9519\u8bef:\"\u7f51\u7edc\u9519\u8bef\u7801\",\u767b\u9646\u5931\u8d25:\"01\",\u67e5\u8be2\u5931\u8d25:\"01\",\u652f\u4ed8\u5931\u8d25:\"02\",\u8bf7\u6c42\u5931\u8d25:\"\u8bf7\u6c42\u9519\u8bef\u7801\"}"

    invoke-static {v0}, Lc8/eGb;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lc8/eGb;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lc8/eGb;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/eGb;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/eGb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lc8/eGb;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lc8/eGb;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    sget-object v0, Lc8/eGb;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lc8/eGb;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/eGb;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/eGb;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lc8/eGb;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    sget-object v0, Lc8/eGb;->a:Ljava/lang/String;

    const-string/jumbo v2, "isContaionInNotNullList"

    const-string/jumbo v3, "Param str is null!"

    invoke-static {v0, v2, v3}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lc8/eGb;->a:Ljava/lang/String;

    const-string/jumbo v2, "isContaionInNotNullList\u4f20\u9012\u53c2\u6570\u4e3a\u7a7a"

    invoke-static {v0, v2}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lc8/eGb;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lc8/nIb;->toStringMap(Lorg/json/JSONObject;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v1, Lc8/eGb;->a:Ljava/lang/String;

    const-string/jumbo v2, "getMap"

    const-string/jumbo v3, "\u8f6c\u6362jsonStr\u4e3ajsonObject\u5931\u8d25"

    invoke-static {v1, v2, v3}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lc8/eGb;->a:Ljava/lang/String;

    const-string/jumbo v2, "\u8f6c\u6362jsonStr\u4e3ajsonObject\u5931\u8d25"

    invoke-static {v1, v2}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUsabilityMsg(Ljava/lang/String;Ljava/lang/String;)Lc8/gGb;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/eGb;->getUsabilityMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/gGb;

    move-result-object v0

    return-object v0
.end method

.method public static getUsabilityMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/gGb;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Lc8/eGb;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    sget-object v1, Lc8/eGb;->a:Ljava/lang/String;

    const-string/jumbo v2, "getUsabilityMsg"

    const-string/jumbo v3, "errCode is not right!"

    invoke-static {v1, v2, v3}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lc8/eGb;->b:Ljava/util/Map;

    if-eqz v1, :cond_1

    sget-object v1, Lc8/eGb;->c:Ljava/util/Map;

    if-eqz v1, :cond_1

    sget-object v1, Lc8/eGb;->d:Ljava/util/Map;

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Lc8/eGb;->a:Ljava/lang/String;

    const-string/jumbo v2, "getUsabilityMsg"

    const-string/jumbo v3, "modelCodeMap/modelCodeMap/errCodeMap is null !"

    invoke-static {v1, v2, v3}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lc8/eGb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lc8/eGb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Lc8/eGb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_4

    :cond_3
    sget-object v1, Lc8/eGb;->a:Ljava/lang/String;

    const-string/jumbo v2, "getUsabilityMsg"

    const-string/jumbo v3, "modelCode/linkCode/errCode is null!"

    invoke-static {v1, v2, v3}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lc8/gGb;

    invoke-direct {v0, v1, v2, v3, p1}, Lc8/gGb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
