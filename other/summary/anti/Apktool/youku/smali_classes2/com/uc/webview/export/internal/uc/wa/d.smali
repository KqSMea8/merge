.class public final Lcom/uc/webview/export/internal/uc/wa/d;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/uc/wa/a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/uc/wa/a;)V
    .locals 0

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/uc/webview/export/internal/uc/wa/d;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    .line 1075
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/d;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;)V

    .line 1076
    iget-object v4, p0, Lcom/uc/webview/export/internal/uc/wa/d;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    :try_start_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/d;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/wa/a;->b(Lcom/uc/webview/export/internal/uc/wa/a;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "UC_WA_STAT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1078
    const-string/jumbo v1, "1"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1079
    sget-boolean v1, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v1, :cond_0

    .line 1080
    const-string/jumbo v1, "SDKWaStat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "==handlUpload==last upload time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1085
    const-wide/16 v2, 0x0

    cmp-long v1, v6, v2

    if-eqz v1, :cond_3

    .line 1086
    sub-long v2, v8, v6

    const-wide/32 v10, 0x2932e00

    cmp-long v1, v2, v10

    if-gez v1, :cond_3

    .line 1087
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1088
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1089
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1090
    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1091
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1092
    if-ltz v2, :cond_1

    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    const/16 v3, 0xc

    if-ge v1, v3, :cond_2

    :cond_1
    const/16 v3, 0xc

    if-lt v2, v3, :cond_5

    if-ltz v1, :cond_5

    const/16 v2, 0xc

    if-ge v1, v2, :cond_5

    .line 1094
    :cond_2
    sget-boolean v1, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v1, :cond_3

    .line 1095
    const-string/jumbo v1, "SDKWaStat"

    const-string/jumbo v2, "\u8de80\u70b9\u621612\u70b9"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :cond_3
    const/4 v3, 0x0

    .line 1107
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v5, v1

    .line 1108
    const-wide/16 v10, 0x0

    cmp-long v1, v6, v10

    if-eqz v1, :cond_10

    .line 1109
    iget-object v1, p0, Lcom/uc/webview/export/internal/uc/wa/d;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v10

    .line 1110
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->v:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/d;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    .line 1112
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/wa/a;->b(Lcom/uc/webview/export/internal/uc/wa/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.taobao.taobao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1113
    :cond_4
    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/d;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v0, v5}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;[Ljava/lang/String;)[B

    move-result-object v2

    .line 1114
    if-nez v2, :cond_7

    .line 1115
    monitor-exit v4

    .line 1182
    :goto_0
    return-void

    .line 1098
    :cond_5
    sget-boolean v0, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v0, :cond_6

    .line 1099
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "\u65f6\u95f4\u95f4\u9694\u5c0f\u4e8e12\u5c0f\u65f6,\u4e0d\u4e0a\u4f20"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    :cond_6
    monitor-exit v4

    goto :goto_0

    .line 1178
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1181
    :catch_0
    move-exception v0

    .line 1180
    const-string/jumbo v1, "SDKWaStat"

    const-string/jumbo v2, "handlUpload"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1118
    :cond_7
    :try_start_3
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->w:Landroid/webkit/ValueCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_8

    .line 1120
    :try_start_4
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->w:Landroid/webkit/ValueCallback;

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v1, v2, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1125
    :cond_8
    :goto_1
    const/4 v1, 0x0

    .line 1128
    :try_start_5
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/wa/e;->a([B)[B

    move-result-object v2

    .line 1129
    const/4 v1, 0x1

    .line 1130
    sget-boolean v0, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v0, :cond_9

    .line 1131
    const-string/jumbo v0, "SDKWaStat"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "getUploadData encrypt:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1138
    :cond_9
    :goto_2
    :try_start_6
    invoke-static {v10, v1}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 1139
    sget-boolean v0, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v0, :cond_a

    .line 1140
    const-string/jumbo v0, "SDKWaStat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "request url:"

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    :cond_a
    const/4 v0, 0x3

    .line 1146
    :goto_3
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_f

    .line 1147
    invoke-static {v11, v2}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;[B)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1148
    const/4 v3, 0x1

    move v0, v3

    .line 1149
    :goto_4
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->v:Landroid/webkit/ValueCallback;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_b

    .line 1155
    :try_start_7
    iget-object v1, p0, Lcom/uc/webview/export/internal/uc/wa/d;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v1, v10, v5}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1156
    if-eqz v1, :cond_b

    .line 1157
    const-string/jumbo v2, "SDKWaStat"

    invoke-static {v2, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->v:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1159
    const/4 v0, 0x1

    .line 1167
    :cond_b
    :goto_5
    if-eqz v0, :cond_c

    .line 1169
    :try_start_8
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/uc/webview/export/internal/uc/wa/d;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/wa/a;->c(Lcom/uc/webview/export/internal/uc/wa/a;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wa_upload_new.wa"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1171
    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/d;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    const/4 v1, 0x0

    aget-object v1, v5, v1

    invoke-static {v0, v8, v9, v1}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;JLjava/lang/String;)V

    .line 1174
    :cond_c
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_d

    .line 1175
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "\u9996\u6b21\u4e0d\u4e0a\u4f20\u6570\u636e"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/d;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    const/4 v1, 0x0

    aget-object v1, v5, v1

    invoke-static {v0, v8, v9, v1}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;JLjava/lang/String;)V

    .line 1178
    :cond_d
    monitor-exit v4

    goto/16 :goto_0

    .line 1121
    :catch_1
    move-exception v0

    .line 1122
    const-string/jumbo v1, "SDKWaStat"

    const-string/jumbo v11, "byte \u8f6c String\u5f02\u5e38!"

    invoke-static {v1, v11, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1133
    :catch_2
    move-exception v0

    .line 1134
    const-string/jumbo v11, "SDKWaStat"

    const-string/jumbo v12, "data encrypt error:"

    invoke-static {v11, v12, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1161
    :catch_3
    move-exception v1

    .line 1162
    const-string/jumbo v2, "SDKWaStat"

    const-string/jumbo v3, "\u7b2c\u4e09\u65b9\u4e0a\u4f20\u6570\u636e\u51fa\u9519!"

    invoke-static {v2, v3, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    :cond_e
    move v0, v1

    goto/16 :goto_3

    :cond_f
    move v0, v3

    goto :goto_4

    :cond_10
    move v0, v3

    goto :goto_5
.end method
