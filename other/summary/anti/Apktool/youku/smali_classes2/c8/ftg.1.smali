.class public Lc8/ftg;
.super Ljava/lang/Object;
.source "ShortLivedConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/htg;->a(Lc8/ptg;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc8/ptg;

.field final synthetic b:I

.field final synthetic c:Lc8/htg;


# direct methods
.method constructor <init>(Lc8/htg;Lc8/ptg;I)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lc8/ftg;->c:Lc8/htg;

    iput-object p2, p0, Lc8/ftg;->a:Lc8/ptg;

    iput p3, p0, Lc8/ftg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 73
    iget-object v7, p0, Lc8/ftg;->c:Lc8/htg;

    invoke-virtual {v7}, Lc8/htg;->e()Lc8/ltg;

    move-result-object v4

    .line 76
    .local v4, "listener":Lc8/ltg;
    :try_start_0
    iget-object v7, p0, Lc8/ftg;->c:Lc8/htg;

    invoke-static {v7}, Lc8/htg;->a(Lc8/htg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    iget-object v7, p0, Lc8/ftg;->a:Lc8/ptg;

    iget-object v7, v7, Lc8/ptg;->a:Ljava/util/Map;

    if-eqz v7, :cond_2

    .line 91
    iget-object v7, p0, Lc8/ftg;->a:Lc8/ptg;

    iget-object v7, v7, Lc8/ptg;->a:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 92
    .local v1, "entry":Ljava/util/Map$Entry;
    iget-object v7, p0, Lc8/ftg;->c:Lc8/htg;

    iget-object v9, v7, Lc8/htg;->e:Ljava/net/HttpURLConnection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v7, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    const/16 v6, 0x8

    .line 79
    .local v6, "p":I
    invoke-static {v6}, Lc8/Tsg;->a(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 80
    const-string/jumbo v7, "ShortLivedConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lc8/ftg;->c:Lc8/htg;

    iget v9, v9, Lc8/htg;->c:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " open connection error, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v0}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :cond_0
    new-instance v2, Lc8/utg;

    const-string/jumbo v7, "100"

    const-string/jumbo v8, "3"

    const-string/jumbo v9, "open connection error"

    invoke-direct {v2, v7, v8, v9, v10}, Lc8/utg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    .local v2, "error":Lc8/utg;
    if-eqz v4, :cond_1

    .line 85
    iget-object v7, p0, Lc8/ftg;->c:Lc8/htg;

    invoke-interface {v4, v7, v2}, Lc8/ltg;->a(Lc8/otg;Lc8/utg;)V

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "error":Lc8/utg;
    :cond_1
    :goto_1
    return-void

    .line 96
    .end local v6    # "p":I
    :cond_2
    const/4 v6, 0x4

    .line 97
    .restart local v6    # "p":I
    invoke-static {v6}, Lc8/Tsg;->a(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 98
    const-string/jumbo v7, "ShortLivedConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lc8/ftg;->c:Lc8/htg;

    iget v9, v9, Lc8/htg;->c:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " URL:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lc8/ftg;->c:Lc8/htg;

    iget-object v9, v9, Lc8/htg;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " RequestHeaders:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lc8/ftg;->c:Lc8/htg;

    iget-object v9, v9, Lc8/htg;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_3
    :try_start_1
    iget-object v7, p0, Lc8/ftg;->c:Lc8/htg;

    iget-object v7, v7, Lc8/htg;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    if-eqz v4, :cond_4

    .line 118
    iget-object v7, p0, Lc8/ftg;->c:Lc8/htg;

    iget v8, p0, Lc8/ftg;->b:I

    invoke-interface {v4, v7, v8}, Lc8/ltg;->a(Lc8/otg;I)V

    .line 121
    :cond_4
    iget-object v7, p0, Lc8/ftg;->a:Lc8/ptg;

    iget-object v7, v7, Lc8/ptg;->b:[B

    if-eqz v7, :cond_6

    .line 122
    const/4 v5, 0x0

    .line 124
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_2
    iget-object v7, p0, Lc8/ftg;->c:Lc8/htg;

    iget-object v7, v7, Lc8/htg;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 125
    iget-object v7, p0, Lc8/ftg;->a:Lc8/ptg;

    iget-object v7, v7, Lc8/ptg;->b:[B

    iget-object v8, p0, Lc8/ftg;->a:Lc8/ptg;

    iget v8, v8, Lc8/ptg;->c:I

    iget-object v9, p0, Lc8/ftg;->a:Lc8/ptg;

    iget v9, v9, Lc8/ptg;->d:I

    invoke-virtual {v5, v7, v8, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 126
    const/4 v6, 0x4

    .line 127
    invoke-static {v6}, Lc8/Tsg;->a(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 128
    const-string/jumbo v7, "ShortLivedConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lc8/ftg;->c:Lc8/htg;

    iget v9, v9, Lc8/htg;->c:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " BODY:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    iget-object v10, p0, Lc8/ftg;->a:Lc8/ptg;

    iget-object v10, v10, Lc8/ptg;->b:[B

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :cond_5
    if-eqz v5, :cond_6

    .line 145
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 156
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 157
    iget-object v7, p0, Lc8/ftg;->c:Lc8/htg;

    iget v8, p0, Lc8/ftg;->b:I

    invoke-interface {v4, v7, v8}, Lc8/ltg;->b(Lc8/otg;I)V

    .line 160
    :cond_7
    iget-object v7, p0, Lc8/ftg;->c:Lc8/htg;

    iget-object v8, p0, Lc8/ftg;->c:Lc8/htg;

    iget-object v8, v8, Lc8/htg;->e:Ljava/net/HttpURLConnection;

    invoke-static {v7, v8, v4}, Lc8/htg;->a(Lc8/htg;Ljava/net/HttpURLConnection;Lc8/ltg;)V

    goto/16 :goto_1

    .line 104
    :catch_1
    move-exception v0

    .line 105
    .restart local v0    # "e":Ljava/lang/Exception;
    const/16 v6, 0x8

    .line 106
    invoke-static {v6}, Lc8/Tsg;->a(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 107
    const-string/jumbo v7, "ShortLivedConnection"

    const-string/jumbo v8, "connect error."

    invoke-static {v6, v7, v8, v0}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    :cond_8
    new-instance v2, Lc8/utg;

    const-string/jumbo v7, "100"

    const-string/jumbo v8, "4"

    const-string/jumbo v9, "connect error"

    invoke-direct {v2, v7, v8, v9, v10}, Lc8/utg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    .restart local v2    # "error":Lc8/utg;
    if-eqz v4, :cond_1

    .line 112
    iget-object v7, p0, Lc8/ftg;->c:Lc8/htg;

    invoke-interface {v4, v7, v2}, Lc8/ltg;->a(Lc8/otg;Lc8/utg;)V

    goto/16 :goto_1

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "error":Lc8/utg;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    const/16 v6, 0x8

    .line 148
    invoke-static {v6}, Lc8/Tsg;->a(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 149
    const-string/jumbo v7, "ShortLivedConnection"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 130
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const/16 v6, 0x8

    .line 132
    :try_start_4
    invoke-static {v6}, Lc8/Tsg;->a(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 133
    const-string/jumbo v7, "ShortLivedConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lc8/ftg;->c:Lc8/htg;

    iget v9, v9, Lc8/htg;->c:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " send data error."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v0}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :cond_9
    iget-object v7, p0, Lc8/ftg;->c:Lc8/htg;

    iget-object v7, v7, Lc8/htg;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 136
    new-instance v2, Lc8/utg;

    const-string/jumbo v7, "100"

    const-string/jumbo v8, "5"

    const-string/jumbo v9, "send data error"

    const/4 v10, 0x1

    invoke-direct {v2, v7, v8, v9, v10}, Lc8/utg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 138
    .restart local v2    # "error":Lc8/utg;
    if-eqz v4, :cond_a

    .line 139
    iget-object v7, p0, Lc8/ftg;->c:Lc8/htg;

    invoke-interface {v4, v7, v2}, Lc8/ltg;->a(Lc8/otg;Lc8/utg;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    :cond_a
    if-eqz v5, :cond_1

    .line 145
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 146
    :catch_4
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    const/16 v6, 0x8

    .line 148
    invoke-static {v6}, Lc8/Tsg;->a(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 149
    const-string/jumbo v7, "ShortLivedConnection"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 143
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "error":Lc8/utg;
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_b

    .line 145
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 151
    :cond_b
    :goto_3
    throw v7

    .line 146
    :catch_5
    move-exception v0

    .line 147
    .restart local v0    # "e":Ljava/io/IOException;
    const/16 v6, 0x8

    .line 148
    invoke-static {v6}, Lc8/Tsg;->a(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 149
    const-string/jumbo v8, "ShortLivedConnection"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
