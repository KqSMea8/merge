.class public final Lcom/uc/webview/export/internal/utility/c;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/utility/c$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    const/4 v2, 0x0

    .line 138
    :goto_0
    return v2

    .line 49
    :cond_0
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "verify: file = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 51
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 55
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/c$a;->b(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v3

    .line 56
    if-eqz v3, :cond_1

    array-length v2, v3

    if-gtz v2, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    .line 57
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "verify: failed: Signatures of archive is empty. Costs "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    if-eqz p4, :cond_2

    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    :cond_2
    :goto_2
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Verify: total costs:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 56
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 61
    :cond_4
    :try_start_2
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/c$a;->a([Landroid/content/pm/Signature;)[Ljava/security/PublicKey;

    move-result-object v8

    .line 62
    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/c$a;->a([Ljava/security/PublicKey;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 63
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "verify: failed: PublicKeys of archive is empty. Costs "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    if-eqz p4, :cond_5

    const/4 v2, 0x2

    :try_start_3
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    :cond_5
    :goto_3
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Verify: total costs:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 68
    :cond_6
    :try_start_4
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "verify: step 0: get PublicKeys of archive ok. Costs "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    if-eqz p2, :cond_8

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/uc/webview/export/internal/utility/c$a;->a(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v4

    .line 76
    invoke-static {v8, v4}, Lcom/uc/webview/export/internal/utility/c;->a([Ljava/security/PublicKey;[Landroid/content/pm/Signature;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 77
    const-string/jumbo v4, "SignatureVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "verify: step 1: get Signatures of app from current context and verify ok. Costs "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 78
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Verify: total costs:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 80
    :cond_7
    :try_start_5
    const-string/jumbo v4, "SignatureVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "verify: step 1: get Signatures of app from current context and verify failed. Costs "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 85
    const-string/jumbo v2, "UEsDBBQACAgIAJhOB0cAAAAAAAAAAAAAAAAUAAAATUVUQS1JTkYvTUFOSUZFU1QuTUbzTczLTEstLtENSy0qzszPs1Iw1DPg5XIuSk0sSU3RdaoECVjoGcSbGipo+BclJuekKjjnFxXkFyWWAJVr8nLxcvkl5qZaKTjmpRTlZ6b4Qg3Uq8jN4eUK9nA01HXJTAcKWCmUB6d4G5SWuZgkZRuaZgdGljsGeZW6JmdkuSfbgswBAFBLBwjepzUwgwAAAIwAAABQSwMEFAAICAgAmE4HRwAAAAAAAAAAAAAAABQAAABNRVRBLUlORi9BTkRST0lEXy5TRm2OzWrCQBRG94G8wywrMmESaBsHXOQHaWuTSqNBuyljMyYXzYyduYbk7asUF4K7b/OdcwqolcCTkbSUxoJWnPgec53iJfJpCrW0SDOhYPc/QNEI0cD2hNJyMt53c6XzyaLIF5uxz3A5hLFIwyaop/cZnNimXX8+JaFK43UfZCXE5dfmFZ+Hzp4/iZECZUXj4RISeuz70ScPH0b8HCRJtDlqI/CcOXId18lFKzmJVGU0VFeD17eHGzcn9Vb3OzaBeWXZvpg13e/qaIO392GVTS+cP1BLBwgXEtJL0gAAAAUBAABQSwMEFAAICAgAmE4HRwAAAAAAAAAAAAAAABUAAABNRVRBLUlORi9BTkRST0lEXy5SU0EzaGIOZOPUavNo+87LyM60oInZyaCJ2Y6JkdGQz4CHjQMiw8TKymDAjVDHuKCJSdKgiUnUoImxbgEzEyMTE4vvpJNrDHjhahhBWvwMuQ042ZhDWdiEmZLzYBwOYab0FBiHHcipgnG4hJlKk2EcbmQOM4hjoCDOa2hoYGxsYGBmaGhqFiXBb2RgZmpoZGwIFaC6jY3zkf3EyMrA3NjLYNDYydTYyLDqZORX5/miUyfU1C+xyk3qX3bsAUNKwUWld3G3Dk17KqviynVe7PGSVd2lxXHKK5af9VRtippnLHjt2BUmb7/m2kTrDeaL4jqbG5KiWXRktr9mrG8r1/Z6yBT2w+F61Gz/lHz96wsrnjaYSihHHHytPYWZXaDqQ4CFv7V68sa29HnmcktPMjEzMjCiBTkz0F3LTBu4AjkKOrY0NpkFXhJStT/Dv2Rn7Yminx+PVBfZSRk+OWp768f1nw+2h3ytPCDTUX/t4z3hjEj/pqTldVMjtG5I7Pl/QXue2cL1T5I2Kaw5doph94xFF6o8nMJXO5dOMjwu7Ncp1uDxIXrzWwXnbpZou6BIj66GfykdPScmMV22CW/yP2jY+M+g8TcwCRmEUTs+oMkMNWGiRhBLY0OUxeqdk7QPK1rcvfHPe28Q96861qnPCw65zDl3S0Bl5TVpO0aj6pppsn8X/Es4w3iXja8195jlhdOC5b/EbZcv7Ty7cu079vMXGk89sBKO/NXpv9MrfFrz8uWsHc7GNi9ycw9I9fF/m9rDs9N7a9feNInmvP2R0m9Prjxxp8ti75Nr006eOFAOAFBLBwhVhgTIXQIAAFUDAABQSwMEFAAICAgA54UGRwAAAAAAAAAAAAAAABMAAABBbmRyb2lkTWFuaWZlc3QueG1sXZHBTsJAFEXvTEWa6IKFC2P4AkNK3BpXrlwYNnxBoYAN2laKsnXBgm/wI/gs1/yBng4D1M7Lzbu9785789JAoXZGMurqiRzqdB5q/Ab0wBpswDfYgh9woU9NtFCpVLkyDRTrDUVqwzIl1HJqCcqtXrQkCt2rT5Qao0zwx/Co4Y+o5tT66IXm5AXe0n3/7ys3rUAf44s1c/ND1zfDM3X3lm6Tfc9IH7BIKyojNkjJKzwJ9/dzq1mv6CNUqaM79Doe6ZDiSDTE+e7e8GVCXZK71hiZjq7hFvxyjOcW/bmmV6cFvyKs38Ued3L/JGh77xn53GtVDvyMVqOXaeiH2X9QSwcI1sGMOP4AAADwAQAAUEsBAhQAFAAICAgAmE4HR96nNTCDAAAAjAAAABQAAAAAAAAAAAAAAAAAAAAAAE1FVEEtSU5GL01BTklGRVNULk1GUEsBAhQAFAAICAgAmE4HRxcS0kvSAAAABQEAABQAAAAAAAAAAAAAAAAAxQAAAE1FVEEtSU5GL0FORFJPSURfLlNGUEsBAhQAFAAICAgAmE4HR1WGBMhdAgAAVQMAABUAAAAAAAAAAAAAAAAA2QEAAE1FVEEtSU5GL0FORFJPSURfLlJTQVBLAQIUABQACAgIAOeFBkfWwYw4/gAAAPABAAATAAAAAAAAAAAAAAAAAHkEAABBbmRyb2lkTWFuaWZlc3QueG1sUEsFBgAAAAAEAAQACAEAALgFAAAAAA=="

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    .line 89
    :try_start_6
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "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"

    .line 90
    invoke-static {v9}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, "_2336"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, "_"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v9, v2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v12

    array-length v3, v2

    int-to-long v14, v3

    cmp-long v3, v12, v14

    if-eqz v3, :cond_c

    .line 92
    :cond_9
    new-instance v9, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 95
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 97
    :cond_a
    const/4 v4, 0x0

    .line 99
    :try_start_7
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 100
    :try_start_8
    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 102
    :try_start_9
    invoke-static {v3}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 105
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 106
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 108
    :cond_b
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v2, v12, v2

    if-nez v2, :cond_c

    .line 109
    invoke-virtual {v9, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 111
    :cond_c
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/c$a;->b(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 112
    invoke-static {v8, v2}, Lcom/uc/webview/export/internal/utility/c;->a([Ljava/security/PublicKey;[Landroid/content/pm/Signature;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 113
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "verify: step 2: get Signatures of app from hardcode app and verify ok. Costs "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 114
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Verify: total costs:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 102
    :catchall_0
    move-exception v2

    move-object v3, v4

    :goto_4
    :try_start_a
    invoke-static {v3}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    throw v2
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_0
    move-exception v2

    .line 117
    :cond_d
    :try_start_b
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "verify: step 2: get Signatures of app from hardcode app and verify failed. Costs "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/c$a;->a(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v4

    .line 125
    invoke-static {v8, v4}, Lcom/uc/webview/export/internal/utility/c;->a([Ljava/security/PublicKey;[Landroid/content/pm/Signature;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 126
    const-string/jumbo v4, "SignatureVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "verify: step 3: get Signatures of app from "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " and verify ok. Costs "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 127
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Verify: total costs:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 129
    :cond_e
    :try_start_c
    const-string/jumbo v4, "SignatureVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "verify: step 3: get Signatures of app from "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " and verify failed. Costs "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 131
    :cond_f
    if-eqz p4, :cond_10

    const/4 v2, 0x2

    :try_start_d
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 136
    :cond_10
    :goto_5
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Verify: total costs:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 132
    :catch_1
    move-exception v2

    .line 133
    if-eqz p4, :cond_11

    const/4 v3, 0x2

    :try_start_e
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 134
    :cond_11
    :goto_7
    const-string/jumbo v2, "SignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Verify: total costs:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 136
    :catchall_1
    move-exception v2

    const-string/jumbo v3, "SignatureVerifier"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Verify: total costs:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :catch_2
    move-exception v2

    goto :goto_7

    :catch_3
    move-exception v2

    goto/16 :goto_5

    .line 102
    :catchall_2
    move-exception v2

    goto/16 :goto_4

    :catch_4
    move-exception v2

    goto/16 :goto_3

    :catch_5
    move-exception v2

    goto/16 :goto_2
.end method

.method private static final a([Ljava/security/PublicKey;[Landroid/content/pm/Signature;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 143
    :try_start_0
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/c$a;->a([Landroid/content/pm/Signature;)[Ljava/security/PublicKey;

    move-result-object v3

    .line 144
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/c$a;->a([Ljava/security/PublicKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const-string/jumbo v1, "SignatureVerifier"

    const-string/jumbo v2, "\u516c\u94a5\u6821\u9a8c\u9519\u8bef\uff1aImplement.isEmpty(appPublicKeys) == true"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    return v0

    .line 149
    :cond_0
    if-eqz v3, :cond_1

    if-nez p0, :cond_3

    :cond_1
    const-string/jumbo v2, "SignatureVerifier"

    const-string/jumbo v3, "Sign.equals: s1 == null || s2 == null"

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v2, v0

    :goto_1
    if-nez v2, :cond_6

    .line 150
    const-string/jumbo v1, "SignatureVerifier"

    const-string/jumbo v2, "\u516c\u94a5\u6821\u9a8c\u9519\u8bef\uff1aImplement.equals(appPublicKeys, archiveKeys) == false"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    const-string/jumbo v1, "SignatureVerifier"

    const-string/jumbo v2, "\u516c\u94a5\u6821\u9a8c\u9519\u8bef\uff1aImplement.isEmpty(appPublicKeys) == true"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_3
    :try_start_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    array-length v5, v3

    move v2, v0

    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v6, v3, v2

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    array-length v5, p0

    move v2, v0

    :goto_3
    if-ge v2, v5, :cond_5

    aget-object v6, p0, v2

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_6
    move v0, v1

    .line 159
    goto :goto_0
.end method
