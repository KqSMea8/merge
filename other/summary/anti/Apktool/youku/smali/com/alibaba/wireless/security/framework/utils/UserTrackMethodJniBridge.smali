.class public Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:Ljava/lang/Class;

.field private static h:Ljava/lang/Class;

.field private static i:Ljava/lang/Class;

.field private static j:Ljava/lang/reflect/Constructor;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/reflect/Method;

.field private static final o:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->b:Ljava/lang/String;

    sput v1, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->c:I

    sput v1, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->d:I

    sput v1, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->e:I

    sput v1, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->f:I

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->g:Ljava/lang/Class;

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->h:Ljava/lang/Class;

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->i:Ljava/lang/Class;

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->j:Ljava/lang/reflect/Constructor;

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->k:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->l:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->m:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->n:Ljava/lang/reflect/Method;

    const-string/jumbo v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->o:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static _2forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized a()Ljava/lang/String;
    .locals 4

    const-class v1, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->b:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->b:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static addUtRecord(Ljava/lang/String;IILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 v1, 0x0

    invoke-static {}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->utAvaiable()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string/jumbo v2, "Page_SecurityGuardSDK"

    const/16 v3, 0x4e1f

    if-eqz p3, :cond_2

    :goto_0
    rem-int/lit8 v0, p1, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "plugin"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "tid"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "time"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->d:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/wireless/security/framework/utils/f;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    sput v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->c:I

    const/4 v0, 0x1

    sput v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->d:I

    :cond_0
    const-string/jumbo v0, "ui"

    sget v6, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->c:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "sid"

    invoke-static {}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "uuid"

    invoke-static {}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "msg"

    invoke-static {p6}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "rsv1"

    invoke-static {p7}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "rsv2"

    invoke-static/range {p8 .. p8}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "rsv3"

    invoke-static/range {p9 .. p9}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "rsv4"

    invoke-static/range {p10 .. p10}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->j:Ljava/lang/reflect/Constructor;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    aput-object p0, v6, v2

    const/4 v2, 0x3

    aput-object p3, v6, v2

    const/4 v2, 0x4

    aput-object v4, v6, v2

    const/4 v2, 0x5

    aput-object v5, v6, v2

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_1
    :goto_2
    return v1

    :cond_2
    const-string/jumbo p3, ""

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->k:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->l:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->h:Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->m:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->n:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v2, v4}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private static b()Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, ""

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->bytesToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6

    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v3, v0, 0x1

    sget-object v4, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->o:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->o:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static getStackTrace(II)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const-string/jumbo v1, ""

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    if-lez p0, :cond_2

    if-lez p1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    if-ge v1, p1, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v4, p0, :cond_1

    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    aget-object v4, v2, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->StackTraceElement_getClassName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static utAvaiable()I
    .locals 6

    sget v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->f:I

    if-nez v0, :cond_1

    const-class v1, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string/jumbo v0, "com.ut.mini.internal.UTOriginalCustomHitBuilder"

    invoke-static {v0}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->_2forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->g:Ljava/lang/Class;

    const-string/jumbo v0, "com.ut.mini.UTAnalytics"

    invoke-static {v0}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->_2forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->h:Ljava/lang/Class;

    const-string/jumbo v0, "com.ut.mini.UTTracker"

    invoke-static {v0}, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->_2forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->i:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->g:Ljava/lang/Class;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->j:Ljava/lang/reflect/Constructor;

    sget-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->g:Ljava/lang/Class;

    const-string/jumbo v2, "build"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->k:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->h:Ljava/lang/Class;

    const-string/jumbo v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->l:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->h:Ljava/lang/Class;

    const-string/jumbo v2, "getDefaultTracker"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->m:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->i:Ljava/lang/Class;

    const-string/jumbo v2, "send"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->n:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    :try_start_3
    sput v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->e:I

    :goto_0
    const/4 v0, 0x1

    sput v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->f:I

    :cond_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    sget v0, Lcom/alibaba/wireless/security/framework/utils/UserTrackMethodJniBridge;->e:I

    return v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
