.class public Lc8/ELn;
.super Ljava/lang/Object;
.source "UPasswordSDKUtil.java"


# static fields
.field public static currentClickTime:J

.field public static default_time_length:I

.field public static lastClickTime:J

.field public static uPasswordSDKUtil:Lc8/ELn;


# instance fields
.field private ALLOW_REDIRECT:Z

.field private final REQUEST_METHOD_POST:Ljava/lang/String;

.field private final YOUR_CONNECT_TIMEOUT:I

.field private final YOUR_READ_TIMEOUT:I

.field public showH5PageDialog:Lc8/ILn;

.field public showVideoPageDialog:Lc8/LLn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 54
    sput-wide v0, Lc8/ELn;->lastClickTime:J

    .line 56
    sput-wide v0, Lc8/ELn;->currentClickTime:J

    .line 58
    const/16 v0, 0x7d0

    sput v0, Lc8/ELn;->default_time_length:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x4e20

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v0, p0, Lc8/ELn;->YOUR_CONNECT_TIMEOUT:I

    .line 48
    iput v0, p0, Lc8/ELn;->YOUR_READ_TIMEOUT:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/ELn;->ALLOW_REDIRECT:Z

    .line 52
    const-string/jumbo v0, "post"

    iput-object v0, p0, Lc8/ELn;->REQUEST_METHOD_POST:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static checkClickEvent(J)Z
    .locals 4
    .param p0, "interval"    # J

    .prologue
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 158
    sput-wide v0, Lc8/ELn;->currentClickTime:J

    sget-wide v2, Lc8/ELn;->lastClickTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, p0

    if-lez v0, :cond_0

    .line 159
    sget-wide v0, Lc8/ELn;->currentClickTime:J

    sput-wide v0, Lc8/ELn;->lastClickTime:J

    .line 160
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    .line 162
    :cond_0
    sget-wide v0, Lc8/ELn;->currentClickTime:J

    sput-wide v0, Lc8/ELn;->lastClickTime:J

    .line 163
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertMapToDataStr(Ljava/util/Map;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v11, 0x40

    const/4 v10, 0x1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 170
    .local v0, "dataStr":Ljava/lang/StringBuilder;
    const-string/jumbo v8, "{"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 172
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 174
    .local v3, "length":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 175
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 176
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 177
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 178
    .local v6, "value":Ljava/lang/Object;
    if-eqz v2, :cond_0

    if-eqz v6, :cond_0

    .line 180
    :try_start_0
    invoke-static {v2}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string/jumbo v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 183
    invoke-static {v6}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :goto_1
    const-string/jumbo v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v7

    .line 197
    .local v7, "var8":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    .local v5, "log":Ljava/lang/StringBuilder;
    const-string/jumbo v8, "[converMapToDataStr] convert key="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string/jumbo v8, ",value="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to dataStr error."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string/jumbo v8, "mtopsdk.ReflectUtil"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 184
    .end local v5    # "log":Ljava/lang/StringBuilder;
    .end local v7    # "var8":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 185
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 186
    :cond_2
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 187
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 188
    :cond_3
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 189
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 190
    :cond_4
    instance-of v8, v6, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v8, :cond_5

    .line 191
    invoke-static {v6}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 193
    :cond_5
    invoke-static {v6}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 205
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 206
    .local v4, "length1":I
    if-le v4, v10, :cond_7

    .line 207
    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 211
    .end local v3    # "length":Ljava/util/Iterator;
    .end local v4    # "length1":I
    :cond_7
    const-string/jumbo v8, "}"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static declared-synchronized getInstance()Lc8/ELn;
    .locals 2

    .prologue
    .line 69
    const-class v1, Lc8/ELn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/ELn;->uPasswordSDKUtil:Lc8/ELn;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lc8/ELn;

    invoke-direct {v0}, Lc8/ELn;-><init>()V

    sput-object v0, Lc8/ELn;->uPasswordSDKUtil:Lc8/ELn;

    .line 72
    :cond_0
    sget-object v0, Lc8/ELn;->uPasswordSDKUtil:Lc8/ELn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isTablet()Z
    .locals 2

    .prologue
    .line 217
    const-class v1, Lc8/vdn;

    invoke-static {v1}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vdn;

    invoke-interface {v1}, Lc8/vdn;->isTablet()Z

    move-result v0

    .line 218
    .local v0, "isTabletUPassword":Z
    return v0
.end method


# virtual methods
.method public dissMissAllDialog(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lc8/ELn;->isActivityContextValid(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lc8/ELn;->dissMissVideoDialog()V

    .line 133
    invoke-virtual {p0}, Lc8/ELn;->dissMissH5Dialog()V

    .line 136
    :cond_0
    return-void
.end method

.method public dissMissH5Dialog()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lc8/ELn;->showH5PageDialog:Lc8/ILn;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lc8/ELn;->showH5PageDialog:Lc8/ILn;

    invoke-virtual {v0}, Lc8/ILn;->dissMissDialog()V

    .line 127
    :cond_0
    return-void
.end method

.method public dissMissVideoDialog()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lc8/ELn;->showVideoPageDialog:Lc8/LLn;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lc8/ELn;->showVideoPageDialog:Lc8/LLn;

    invoke-virtual {v0}, Lc8/LLn;->dissMissDialog()V

    .line 120
    :cond_0
    return-void
.end method

.method public enterDetailPage(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 77
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    invoke-static {v0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "youku://play"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 78
    return-void
.end method

.method public enterH5Page(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const-string/jumbo v2, "UPasswordManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enterH5Page urlStr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 88
    :cond_0
    if-nez p1, :cond_1

    .line 89
    sget-object p1, Lc8/ddn;->context:Landroid/content/Context;

    .line 91
    :cond_1
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    .line 92
    .local v0, "nav":Lc8/Ybf;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Landroid/net/Uri;)Z

    goto :goto_0
.end method

.method public isActivityContextValid(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 226
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/app/Activity;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadImageUrlGlide(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 141
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1}, Lc8/ixf;->load(Ljava/lang/String;)Lc8/mxf;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$color;->color_e4e4e4:I

    .line 143
    invoke-virtual {v0, v1}, Lc8/mxf;->placeholder(I)Lc8/mxf;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$color;->color_e4e4e4:I

    .line 144
    invoke-virtual {v0, v1}, Lc8/mxf;->error(I)Lc8/mxf;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p2}, Lc8/mxf;->into(Landroid/widget/ImageView;)Lc8/nxf;

    .line 147
    return-void
.end method

.method public showH5Dialog(Landroid/app/Activity;Lcom/youku/upassword/bean/UPasswordBean;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uPasswordBean"    # Lcom/youku/upassword/bean/UPasswordBean;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lc8/ELn;->isActivityContextValid(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p2}, Lc8/ILn;->newInstance(Lcom/youku/upassword/bean/UPasswordBean;)Lc8/ILn;

    move-result-object v0

    iput-object v0, p0, Lc8/ELn;->showH5PageDialog:Lc8/ILn;

    .line 111
    iget-object v0, p0, Lc8/ELn;->showH5PageDialog:Lc8/ILn;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/ILn;->showDialog(Landroid/app/FragmentTransaction;)V

    .line 113
    :cond_0
    return-void
.end method

.method public showVideoDialog(Landroid/app/Activity;Lcom/youku/upassword/bean/UPasswordBean;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uPasswordBean"    # Lcom/youku/upassword/bean/UPasswordBean;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lc8/ELn;->isActivityContextValid(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p2}, Lc8/LLn;->newInstance(Lcom/youku/upassword/bean/UPasswordBean;)Lc8/LLn;

    move-result-object v0

    iput-object v0, p0, Lc8/ELn;->showVideoPageDialog:Lc8/LLn;

    .line 102
    iget-object v0, p0, Lc8/ELn;->showVideoPageDialog:Lc8/LLn;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/LLn;->showDialog(Landroid/app/FragmentTransaction;)V

    .line 104
    :cond_0
    return-void
.end method
